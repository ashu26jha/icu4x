// generated by diplomat-tool
import wasm from "./diplomat-wasm.mjs";
import * as diplomatRuntime from "./diplomat-runtime.mjs";

// Base enumerator definition
/** See the [Rust documentation for `LineBreakWordOption`](https://docs.rs/icu/latest/icu/segmenter/enum.LineBreakWordOption.html) for more information.
*/
export class LineBreakWordOption {
    #value = undefined;

    static values = new Map([
        ["Normal", 0],
        ["BreakAll", 1],
        ["KeepAll", 2]
    ]);
    constructor(value) {
        if (value instanceof LineBreakWordOption) {
            this.#value = value.value;
            return;
        }

        if (LineBreakWordOption.values.has(value)) {
            this.#value = value;
            return;
        }

        throw TypeError(value + " is not a LineBreakWordOption and does not correspond to any of its enumerator values.");
    }

    get value() {
        return this.#value;
    }

    get ffiValue() {
        return LineBreakWordOption.values.get(this.#value);
    }

    static Normal = new LineBreakWordOption("Normal");

    static BreakAll = new LineBreakWordOption("BreakAll");

    static KeepAll = new LineBreakWordOption("KeepAll");


    

}