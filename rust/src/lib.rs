use std::{
    env,
    ffi::{c_char, CStr, CString},
    fs, thread,
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
    let my_path = match c_str.to_str() {
        Err(_) => "/sdcard",
        Ok(string) => string,
    };
    env::set_var("SEARCH_PATH", my_path);
    get_total_size_of_images();
    CString::new("Loading...").unwrap().into_raw()
}

fn get_total_size_of_images() {
    thread::spawn(|| {
        let mut size = 0;
        fs::write(
            format!("{}/my_test.txt", env::var("SEARCH_PATH").ok().unwrap()),
            b"Rust test from testapp multithread",
        )
        .ok();
        for entry in WalkDir::new(env::var("SEARCH_PATH").ok().unwrap())
            .follow_links(true)
            .into_iter()
            .filter_map(|e| e.ok())
        {
            let file_name = entry.file_name().to_string_lossy();
            if file_name.ends_with(".png")
                || file_name.ends_with(".jpg")
                || file_name.ends_with(".bmp")
                || file_name.ends_with(".dng")
                || file_name.ends_with(".gif")
                || file_name.ends_with(".jpeg")
            {
                size = size + entry.metadata().unwrap().len();
                fs::write(
                    "/storage/emulated/0/size.txt",
                    size.to_string().into_bytes(),
                )
                .ok();
            }
        }
        env::set_var("PNG_SIZE", size.to_string());
    });
}
