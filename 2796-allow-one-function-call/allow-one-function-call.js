function once(fn) {
    let called = false;

    return function(...args) {
        if (!called) {
            called = true;
            return fn.apply(this, args);
        }
        return undefined;
    };
}