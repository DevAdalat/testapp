use std::ffi::CStr;
use std::ffi::CString;
use std::{ffi::c_char, thread};

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
pub extern "C" fn get_all_image_size(path: *mut c_char) -> *mut c_char {
    let c_str = unsafe { CStr::from_ptr(path) };
    let recipient = match c_str.to_str() {
        Err(_) => "there",
        Ok(string) => string,
    };
    let size = thread::spawn(move || {
        WalkDir::new(recipient)
            .into_iter()
            .filter_map(|entry| entry.ok())
            .filter(|a| {
                a.file_name().to_string_lossy().ends_with(".png")
                    || a.file_name().to_string_lossy().ends_with(".jpg")
                    || a.file_name().to_string_lossy().ends_with(".jpeg")
                    || a.file_name().to_string_lossy().ends_with(".bmp")
                    || a.file_name().to_string_lossy().ends_with(".gif")
                    || a.file_name().to_string_lossy().ends_with(".dng")
            })
            .filter_map(|entry| entry.metadata().ok())
            .filter(|metadata| metadata.is_file())
            .fold(0, |acc, m| acc + m.len())
    });
    let final_size = size.join().unwrap();
    CString::new(final_size.to_string()).unwrap().into_raw()
}
