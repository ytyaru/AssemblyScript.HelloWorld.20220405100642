WebAssembly.instantiateStreaming(fetch("hello.wasm"), {}).then(mod => {
  const increment = mod.instance.exports.increment;
  const result = increment(999);
  console.log(result);
  console.assert(result === 1000);
  document.querySelector('body').innerText = result;
});

