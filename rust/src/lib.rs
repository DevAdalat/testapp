use std::{
    env,
    ffi::{c_char, CStr, CString},
    thread::{self, sleep},
    time::Duration,
};

use walkdir::WalkDir;

#[no_mangle]
pub extern "C" fn rust_greeting(to: *const c_char) -> *mut c_char {
    let c_str = unsafe { CStr::from_ptr(to) };
    let recipient = match c_str.to_str() {
        Err(_) => "there",
        Ok(string) => string,
    };
    let data = thread::spawn(move || {
        let finaldata = format!("{} hello from rust multithread", recipient);
        CString::new(finaldata).unwrap()
    });
    data.join().unwrap().into_raw()
}

#[no_mangle]
pub extern "C" fn rust_cstr_free(s: *mut c_char) {
    unsafe {
        if s.is_null() {
            return;
        }
        CString::from_raw(s)
    };
}

#[no_mangle]
pub extern "C" fn get_images_size(path: *mut c_char) -> *mut c_char {
    let c_str = unsafe { CStr::from_ptr(path) };
    let recipient = match c_str.to_str() {
        Err(_) => "/sdcard",
        Ok(string) => string,
    };
    env::set_var("SEARCH_PATH", recipient);
    env::set_var("PNG_SIZE", 0.to_string());
    thread::spawn(|| {
        for entry in WalkDir::new("/sdcard")
            .follow_links(true)
            .into_iter()
            .filter_map(|e| e.ok())
        {}

        //     let size = WalkDir::new(env::var("SEARCH_PATH").expect("/sdcard"))
        //         .into_iter()
        //         .filter_map(|entry| entry.ok())
        //         .filter(|a| {
        //             a.file_name().to_string_lossy().ends_with(".png")
        //                 || a.file_name().to_string_lossy().ends_with(".jpg")
        //                 || a.file_name().to_string_lossy().ends_with(".jpeg")
        //                 || a.file_name().to_string_lossy().ends_with(".bmp")
        //                 || a.file_name().to_string_lossy().ends_with(".gif")
        //                 || a.file_name().to_string_lossy().ends_with(".dng")
        //         })
        //         .filter_map(|entry| entry.metadata().ok())
        //         .filter(|metadata| metadata.is_file())
        //         .fold(0, |acc, m| acc + m.len());
        env::set_var("PNG_SIZE", size.to_string());
    });

    let result = loop {
        if env::var("PNG_SIZE").ok().unwrap() != 0.to_string() {
            println!("{}", env::var("PNG_SIZE").ok().unwrap());
            break env::var("PNG_SIZE").expect("Failed to get env var");
        } else {
            sleep(Duration::from_secs(1));
            println!("Getting Data");
            ()
        }
    };
    CString::new(result).expect("Failure").into_raw()
}
