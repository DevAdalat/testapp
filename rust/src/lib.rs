use std::{
    env,
    ffi::{c_char, CStr, CString},
    thread,
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
    get_total_size_of_images(my_path.to_string());
    CString::new("Loading...").unwrap().into_raw()
}

fn get_total_size_of_images(path: String) {
    thread::spawn(|| {
        let total_size = WalkDir::new(path)
            .into_iter()
            .filter_map(|entry| entry.ok())
            .filter(|e| {
                e.file_name().to_string_lossy().ends_with(".jpg")
                    || e.file_name().to_string_lossy().ends_with(".jpeg")
                    || e.file_name().to_string_lossy().ends_with(".png")
                    || e.file_name().to_string_lossy().ends_with(".dng")
                    || e.file_name().to_string_lossy().ends_with(".bmp")
                    || e.file_name().to_string_lossy().ends_with(".gif")
            })
            .filter_map(|entry| entry.metadata().ok())
            .filter(|metadata| metadata.is_file())
            .fold(0, |acc, m| acc + m.len());
        env::set_var("PNG_SIZE", total_size.to_string());
    });
}
