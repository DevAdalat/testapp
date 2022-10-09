use std::ffi::{c_char, CStr, CString};
use std::thread;

// pub fn main() {
//  //  let aa = CString::new("/sdcard").ok().unwrap();
//  //  let data = thread::spawn(move || getallcount(aa.into_raw()));

//  //  println!("Loading files count");
//  //  let count = data.join().unwrap();
//  //  println!("{} files found", count.to_string());

//  //  let data = thread::spawn(move || {
//  //      let length = getallcount(aa.into_raw());
//  //      println!("{} total files found", length.to_string());
//  //  });
//  //  println!("Getting total files");
//  //  data.join().unwrap();
//}

//#[no_mangle]
//pub extern "C" fn getallcount(path: c_char) -> c_int {
//  let c_str = unsafe { CStr::from_ptr(path) };
//  let str_slice = c_str.to_str().unwrap();
//  let count = thread::spawn(move || WalkDir::new(str_slice).into_iter().count());
//  count.join().unwrap() as c_int
//}

//#[no_mangle]
//pub extern "C" fn add(a: c_int, b: c_int) -> c_int {
//  let sum = thread::spawn(move || a + b);
//  sum.join().unwrap()
//}

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
pub extern "C" fn get_all_image_size(path: *mut c_char) -> c_int {
    let c_str = unsafe { CStr::from_ptr(path) };
    let recipient = match c_str.to_str() {
        Err(_) => "there",
        Ok(string) => string,
    };
    let total_size = thread::spawn(move || {
        let mut size = 0;
        for files in WalkDir::new(recipient)
            .follow_links(true)
            .into_iter()
            .find_map(|e| e.ok())
        {
            let file_name = files.file_name().to_string_lossy();
            if file_name.ends_with(".png")
                || file_name.ends_with(".jpg")
                || file_name.ends_with(".jpeg")
                || file_name.ends_with(".gif")
                || file_name.ends_with(".bmp")
            {
                size += files.metadata().ok().unwrap().len();
            }
        }
        size
    });
    total_size.join().unwrap() as c_int
}

// fn totalImagesSize(path: *mut c_char) {
//  let c_str = unsafe { CStr::from_ptr(path) };
//  let str_slice = c_str.to_str().unwrap();
//  let data = WalkDir::new(str_slice)
//      .into_iter()
//      .find_map(|e| e.ok())
//      .filter(|e| e.file_name().to_string_lossy().ends_with(".json"))
//      .unwrap();
// }

//  fn is_not_hidden(entry: &DirEntry, ishidden: bool) -> bool {
//  if ishidden {
//      entry
//          .file_name()
//          .to_str()
//          .map(|s| entry.depth() == 0 || !s.starts_with("."))
//          .unwrap_or(false)
//  } else {
//      entry
//          .file_name()
//          .to_str()
//          .map(|s| entry.depth() == 0 || s.starts_with("."))
//          .unwrap_or(false)
//  }
// }
