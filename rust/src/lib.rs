use std::{
    ffi::{c_char, c_int, CStr},
    thread,
};

use walkdir::WalkDir;

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

#[no_mangle]
pub extern "C" fn getallcount(path: *mut c_char) -> c_int {
    let c_str = unsafe { CStr::from_ptr(path) };
    let str_slice = c_str.to_str().unwrap();
    let count = thread::spawn(move || WalkDir::new(str_slice).into_iter().count());
    count.join().unwrap() as c_int
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
