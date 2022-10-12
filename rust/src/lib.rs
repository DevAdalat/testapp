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
pub extern "C" fn init_image_size(path: *mut c_char) -> *mut c_char {
    env::remove_var("PNG_SIZE");
    let c_str = unsafe { CStr::from_ptr(path) };
    let my_path = match c_str.to_str() {
        Err(_) => "/sdcard",
        Ok(string) => string,
    };
    env::set_var("IMAGE_SIZE_STATUS", "LOADING");
    get_total_size_of_images(my_path.to_string());
    CString::new("Loading...").unwrap().into_raw()
}

#[no_mangle]
pub extern "C" fn is_image_size_work_done() -> *mut c_char {
    if env::var("IMAGE_SIZE_STATUS").unwrap() == "LOADING" {
        CString::new("false").unwrap().into_raw()
    } else {
        CString::new("true").unwrap().into_raw()
    }
}

#[no_mangle]
pub extern "C" fn get_image_size() -> *mut c_char {
    CString::new(env::var("IMAGE_SIZE").unwrap())
        .unwrap()
        .into_raw()
}

#[no_mangle]
pub extern "C" fn init_videos_size(path: *mut c_char) -> *mut c_char {
    env::set_var("VIDEOS_SIZE_STATUS", "LOADING");
    let c_str = unsafe { CStr::from_ptr(path) };
    let my_path = match c_str.to_str() {
        Err(_) => "/sdcard",
        Ok(string) => string,
    };
    get_total_size_of_videos(my_path.to_string());
    CString::new("Loading......").unwrap().into_raw()
}

#[no_mangle]
pub extern "C" fn is_videos_size_work_done() -> *mut c_char {
    if env::var("VIDEOS_SIZE_STATUS").unwrap() == "LOADING" {
        CString::new("false").unwrap().into_raw()
    } else {
        CString::new("true").unwrap().into_raw()
    }
}

#[no_mangle]
pub extern "C" fn get_videos_size() -> *mut c_char {
    CString::new(env::var("VIDEOS_SIZE").unwrap())
        .unwrap()
        .into_raw()
}

#[no_mangle]
pub extern "C" fn init_apks_size(path: *mut c_char) -> *mut c_char {
    env::set_var("APK_SIZE_STATUS", "LOADING");
    let c_str = unsafe { CStr::from_ptr(path) };
    let my_path = match c_str.to_str() {
        Err(_) => "/sdcard",
        Ok(string) => string,
    };
    get_total_size_of_apk(my_path.to_string());
    CString::new("Loading......").unwrap().into_raw()
}

#[no_mangle]
pub extern "C" fn is_apk_size_work_done() -> *mut c_char {
    if env::var("APK_SIZE_STATUS").unwrap() == "LOADING" {
        CString::new("false").unwrap().into_raw()
    } else {
        CString::new("true").unwrap().into_raw()
    }
}

#[no_mangle]
pub extern "C" fn get_apk_size() -> *mut c_char {
    CString::new(env::var("APK_SIZE").unwrap())
        .unwrap()
        .into_raw()
}

#[no_mangle]
pub extern "C" fn init_musics_size(path: *mut c_char) -> *mut c_char {
    env::set_var("MUSIC_SIZE_STATUS", "LOADING");
    let c_str = unsafe { CStr::from_ptr(path) };
    let my_path = match c_str.to_str() {
        Err(_) => "/sdcard",
        Ok(string) => string,
    };
    get_total_size_of_musics(my_path.to_string());
    CString::new("Loading......").unwrap().into_raw()
}

#[no_mangle]
pub extern "C" fn is_musics_size_work_done() -> *mut c_char {
    if env::var("MUSIC_SIZE_STATUS").unwrap() == "LOADING" {
        CString::new("false").unwrap().into_raw()
    } else {
        CString::new("true").unwrap().into_raw()
    }
}

#[no_mangle]
pub extern "C" fn get_musics_size() -> *mut c_char {
    CString::new(env::var("MUSIC_SIZE").unwrap())
        .unwrap()
        .into_raw()
}

#[no_mangle]
pub extern "C" fn init_docs_size(path: *mut c_char) -> *mut c_char {
    env::set_var("DOCS_SIZE_STATUS", "LOADING");
    let c_str = unsafe { CStr::from_ptr(path) };
    let my_path = match c_str.to_str() {
        Err(_) => "/sdcard",
        Ok(string) => string,
    };
    get_total_size_of_docs(my_path.to_string());
    CString::new("Loading......").unwrap().into_raw()
}

#[no_mangle]
pub extern "C" fn is_docs_size_work_done() -> *mut c_char {
    if env::var("DOCS_SIZE_STATUS").unwrap() == "LOADING" {
        CString::new("false").unwrap().into_raw()
    } else {
        CString::new("true").unwrap().into_raw()
    }
}

#[no_mangle]
pub extern "C" fn get_docs_size() -> *mut c_char {
    CString::new(env::var("DOCS_SIZE").unwrap())
        .unwrap()
        .into_raw()
}

fn get_total_size_of_images(path: String) {
    env::remove_var("IMAGE_SIZE");
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
        env::set_var("IMAGE_SIZE", total_size.to_string());
        env::set_var("IMAGE_SIZE_STATUS", "DONE");
    });
}

fn get_total_size_of_videos(path: String) {
    env::remove_var("VIDEOS_SIZE");
    thread::spawn(|| {
        let total_size = WalkDir::new(path)
            .into_iter()
            .filter_map(|entry| entry.ok())
            .filter(|e| {
                e.file_name().to_string_lossy().ends_with(".mp4")
                    || e.file_name().to_string_lossy().ends_with(".3gp")
                    || e.file_name().to_string_lossy().ends_with(".mkv")
                    || e.file_name().to_string_lossy().ends_with(".avi")
                    || e.file_name().to_string_lossy().ends_with(".webm")
                    || e.file_name().to_string_lossy().ends_with(".ogg")
                    || e.file_name().to_string_lossy().ends_with(".m4v")
            })
            .filter_map(|entry| entry.metadata().ok())
            .filter(|metadata| metadata.is_file())
            .fold(0, |acc, m| acc + m.len());
        env::set_var("VIDEOS_SIZE", total_size.to_string());
        env::set_var("VIDEOS_SIZE_STATUS", "DONE");
    });
}

fn get_total_size_of_docs(path: String) {
    env::remove_var("DOCS_SIZE");
    thread::spawn(|| {
        let total_size = WalkDir::new(path)
            .into_iter()
            .filter_map(|entry| entry.ok())
            .filter(|e| {
                e.file_name().to_string_lossy().ends_with(".jpg")
                    || e.file_name().to_string_lossy().ends_with(".word")
                    || e.file_name().to_string_lossy().ends_with(".docs")
                    || e.file_name().to_string_lossy().ends_with(".html")
                    || e.file_name().to_string_lossy().ends_with(".html")
            })
            .filter_map(|entry| entry.metadata().ok())
            .filter(|metadata| metadata.is_file())
            .fold(0, |acc, m| acc + m.len());
        env::set_var("DOCS_SIZE", total_size.to_string());
        env::set_var("DOCS_SIZE_STATUS", "DONE");
    });
}

fn get_total_size_of_apk(path: String) {
    env::remove_var("APK_SIZE");
    thread::spawn(|| {
        let total_size = WalkDir::new(path)
            .into_iter()
            .filter_map(|entry| entry.ok())
            .filter(|e| {
                e.file_name().to_string_lossy().ends_with(".apk")
                    || e.file_name().to_string_lossy().ends_with(".xapk")
            })
            .filter_map(|entry| entry.metadata().ok())
            .filter(|metadata| metadata.is_file())
            .fold(0, |acc, m| acc + m.len());
        env::set_var("APK_SIZE", total_size.to_string());
        env::set_var("APK_SIZE_STATUS", "DONE");
    });
}

fn get_total_size_of_musics(path: String) {
    env::remove_var("MUSIC_SIZE");
    thread::spawn(|| {
        let total_size = WalkDir::new(path)
            .into_iter()
            .filter_map(|entry| entry.ok())
            .filter(|e| {
                e.file_name().to_string_lossy().ends_with(".mp3")
                    || e.file_name().to_string_lossy().ends_with(".m4a")
                    || e.file_name().to_string_lossy().ends_with(".wav")
                    || e.file_name().to_string_lossy().ends_with(".webm")
                    || e.file_name().to_string_lossy().ends_with(".m4p")
                    || e.file_name().to_string_lossy().ends_with(".m4b")
            })
            .filter_map(|entry| entry.metadata().ok())
            .filter(|metadata| metadata.is_file())
            .fold(0, |acc, m| acc + m.len());
        env::set_var("MUSIC_SIZE", total_size.to_string());
        env::set_var("MUSIC_SIZE_STATUS", "DONE");
    });
}
