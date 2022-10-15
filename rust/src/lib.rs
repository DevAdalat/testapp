use std::ffi::{c_char, CString};

#[no_mangle]
pub extern "C" fn get_list() -> *const *const c_char {
    let names = vec![
        "Adalat".to_string(),
        "Madhu".to_string(),
        "Nitya".to_string(),
        "My Dream".to_string(),
    ];
    get_array(names)
}

fn get_array(argv: Vec<String>) -> *const *const c_char {
    let cstr_argv: Vec<_> = argv
        .iter()
        .map(|arg| CString::new(arg.as_str()).unwrap())
        .collect();

    let mut p_argv: Vec<_> = cstr_argv
        .iter() // do NOT into_iter()
        .map(|arg| arg.as_ptr())
        .collect();

    p_argv.push(std::ptr::null());

    p_argv.as_ptr()
}
