console.info("HJS is ready");

function initFunc() {
    console.log("HJS loaded");
}

function pswhash() {
    var hash = 0, i, chr;
    if (this.length === 0)
        return hash;
    for (i = 0; i < this.length; i++) {
        chr = this.charCodeAt(i);
        hash = ((hash << 5) - hash) + chr;
        hash |= 0; // Convert to 32bit integer
    }
    console.log("jelszo es hash: " + JQuery('#psw').val() + " - " + hash);
    return false;
}

jQuery(document).ready(initFunc);