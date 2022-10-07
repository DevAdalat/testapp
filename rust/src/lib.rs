use std::{
    ffi::{c_char, c_int, CStr},
    thread,
};

use walkdir::WalkDir;

#[no_mangle]
fn getallcount(path: *mut c_char) -> c_int {
    let c_str = unsafe { CStr::from_ptr(path) };
    let str_slice = c_str.to_str().unwrap();
    let count = thread::spawn(move || WalkDir::new(str_slice).into_iter().count());
    count.join().unwrap() as c_int
}
