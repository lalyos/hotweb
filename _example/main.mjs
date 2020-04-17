import "https://use.fontawesome.com/releases/v5.3.1/js/all.js";
import "https://cdnjs.cloudflare.com/ajax/libs/mithril/2.0.4/mithril.min.js";

import * as page from "/lib/page.mjs";
import("/_hotweb.mjs")
  .then((hotweb) => {
    hotweb.watchCSS();
    hotweb.watchHTML();
    hotweb.refresh(() => m.redraw());
  })
  .catch((error) => {
    console.log("[warning] hotweb couldn't be loaded:", error);
  });

m.mount(document.body, wrap(() => page.Page));

function wrap(cb) {
    return {view: () => m(cb())};
}