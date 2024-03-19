'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {"version.json": "d57a6efb0d27d83f2b338308bf597bf2",
"index.html": "eee6532156a868309af0695dcb94f9d1",
"/": "eee6532156a868309af0695dcb94f9d1",
"main.dart.js": "359ed5f9284f01a8e914a4a0ee671e32",
"flutter.js": "6fef97aeca90b426343ba6c5c9dc5d4a",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-maskable-192.png": "c457ef57daa1d16f64b27b786ec2ea3c",
"icons/Icon-maskable-512.png": "301a7604d45b3e739efc881eb04896ea",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"manifest.json": "e341f444cfb5fd007cfac746589432bf",
"assets/AssetManifest.json": "63e79230da061c7baedaea14386c975a",
"assets/NOTICES": "e83d43fbf91f08bc6dd08875dabdf0ce",
"assets/FontManifest.json": "4d026716f0b495d6d225d419deda0243",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "01f933d999c95a17341ab3faaa598eab",
"assets/shaders/ink_sparkle.frag": "f8b80e740d33eb157090be4e995febdf",
"assets/AssetManifest.bin": "4d54b7837ff813967ff4775c886909e3",
"assets/fonts/MaterialIcons-Regular.otf": "985bb06d70996ec51b0d509f8be6a0e4",
"assets/assets/buy_list/buylist2.png": "7b5ae54a453d5a307cc4246ffb7d18f3",
"assets/assets/buy_list/buylist3.png": "ad2d937318ec0123172d9e4f982abce5",
"assets/assets/buy_list/buylist1.png": "19bb5492f6fc3ec87b9a1bf4fc32c87e",
"assets/assets/ad/ad2.png": "630e42c9a6d2941158bd42afd2d518ec",
"assets/assets/ad/ad3.png": "4cb1fdbdd7733f8989557ae973a119b8",
"assets/assets/ad/ad1.png": "4006e7c7e91fb4ef7ad9403b1335bd91",
"assets/assets/ad/banner2.png": "e8c04676ec6871bcedcc4635d9b4f5ad",
"assets/assets/ad/banner3.png": "fd005400bef6331f476d4db4199acef9",
"assets/assets/ad/banner1.png": "bb88cda053ac3a44a6f1e6fe8e8be87a",
"assets/assets/ad/banner4.png": "a55576d15d97f70a0be2438a255bdd00",
"assets/assets/ad/banner5.png": "66c70a1f2bf7bcfc3f8f458408203e3e",
"assets/assets/ad/banner6.png": "10fae06ac6d432be5413bdc1ad3544d1",
"assets/assets/ad/start2.png": "671cc3df98e75ab4961dce3d84541056",
"assets/assets/ad/start3.png": "4b74cd941d006fa39ede9a21f2c0cba7",
"assets/assets/ad/start1.png": "718d7afbf5810330578fb6d8a8a791a0",
"assets/assets/ad/start4.png": "165063f46aaebc9a37b12f2a2e317639",
"assets/assets/ad/start5.png": "46ef5814263edcd7068e5c15844221fa",
"assets/assets/sns/naver.png": "6c8104c36e615362418e2a416a431a6e",
"assets/assets/sns/snsbutton.png": "623c60095beb9c287b661a2fe1c6e0da",
"assets/assets/sns/apple.png": "76211cbefce3d499a419e7a354949dbc",
"assets/assets/sns/kakao.png": "3946e1e126079476624083ebb98ff921",
"assets/assets/sns/google.png": "af83b312fb868a44804cb5df6bb44520",
"assets/assets/product/product2.png": "9cd06ac8a3ef6fcdd7e88ada61863a07",
"assets/assets/product/product3.png": "ad2d937318ec0123172d9e4f982abce5",
"assets/assets/product/product1.png": "bd8017404b62471f665ca58a7fd9e156",
"assets/assets/product/product4.png": "1473a945341ff927390d33ef2c39bc9a",
"assets/assets/product/product5.png": "7b5ae54a453d5a307cc4246ffb7d18f3",
"assets/assets/product/product6.png": "47d2307ec5f418c590d2fc861d1355e8",
"assets/assets/profile/default.png": "aabd10a9187af9fddd6c5ec3c8cd6906",
"assets/assets/logo/logo.png": "f4bf50f40819e0b2fd78b92bc516c8d5",
"assets/assets/product_detail/productdetail1.png": "19bb5492f6fc3ec87b9a1bf4fc32c87e",
"assets/assets/product_detail/productdetail2.png": "be259df53e54db18d97929d4e1ab9221",
"assets/assets/fonts/PretendardBold.ttf": "dfb614ebecd405875f50a918ca11c17c",
"assets/assets/fonts/PretendardRegular.ttf": "d6e0de06bff8b7fda2db4682168e3ddf",
"assets/assets/fonts/PretendardMedium.ttf": "7305f90c923d4409825ec2f4380b63d6",
"canvaskit/skwasm.js": "95f16c6690f955a45b2317496983dbe9",
"canvaskit/skwasm.wasm": "d1fde2560be92c0b07ad9cf9acb10d05",
"canvaskit/chromium/canvaskit.js": "96ae916cd2d1b7320fff853ee22aebb0",
"canvaskit/chromium/canvaskit.wasm": "1165572f59d51e963a5bf9bdda61e39b",
"canvaskit/canvaskit.js": "bbf39143dfd758d8d847453b120c8ebb",
"canvaskit/canvaskit.wasm": "19d8b35640d13140fe4e6f3b8d450f04",
"canvaskit/skwasm.worker.js": "51253d3321b11ddb8d73fa8aa87d3b15"};
// The application shell files that are downloaded before a service worker can
// start.
const CORE = ["main.dart.js",
"index.html",
"assets/AssetManifest.json",
"assets/FontManifest.json"];

// During install, the TEMP cache is populated with the application shell files.
self.addEventListener("install", (event) => {
  self.skipWaiting();
  return event.waitUntil(
    caches.open(TEMP).then((cache) => {
      return cache.addAll(
        CORE.map((value) => new Request(value, {'cache': 'reload'})));
    })
  );
});
// During activate, the cache is populated with the temp files downloaded in
// install. If this service worker is upgrading from one with a saved
// MANIFEST, then use this to retain unchanged resource files.
self.addEventListener("activate", function(event) {
  return event.waitUntil(async function() {
    try {
      var contentCache = await caches.open(CACHE_NAME);
      var tempCache = await caches.open(TEMP);
      var manifestCache = await caches.open(MANIFEST);
      var manifest = await manifestCache.match('manifest');
      // When there is no prior manifest, clear the entire cache.
      if (!manifest) {
        await caches.delete(CACHE_NAME);
        contentCache = await caches.open(CACHE_NAME);
        for (var request of await tempCache.keys()) {
          var response = await tempCache.match(request);
          await contentCache.put(request, response);
        }
        await caches.delete(TEMP);
        // Save the manifest to make future upgrades efficient.
        await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
        // Claim client to enable caching on first launch
        self.clients.claim();
        return;
      }
      var oldManifest = await manifest.json();
      var origin = self.location.origin;
      for (var request of await contentCache.keys()) {
        var key = request.url.substring(origin.length + 1);
        if (key == "") {
          key = "/";
        }
        // If a resource from the old manifest is not in the new cache, or if
        // the MD5 sum has changed, delete it. Otherwise the resource is left
        // in the cache and can be reused by the new service worker.
        if (!RESOURCES[key] || RESOURCES[key] != oldManifest[key]) {
          await contentCache.delete(request);
        }
      }
      // Populate the cache with the app shell TEMP files, potentially overwriting
      // cache files preserved above.
      for (var request of await tempCache.keys()) {
        var response = await tempCache.match(request);
        await contentCache.put(request, response);
      }
      await caches.delete(TEMP);
      // Save the manifest to make future upgrades efficient.
      await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
      // Claim client to enable caching on first launch
      self.clients.claim();
      return;
    } catch (err) {
      // On an unhandled exception the state of the cache cannot be guaranteed.
      console.error('Failed to upgrade service worker: ' + err);
      await caches.delete(CACHE_NAME);
      await caches.delete(TEMP);
      await caches.delete(MANIFEST);
    }
  }());
});
// The fetch handler redirects requests for RESOURCE files to the service
// worker cache.
self.addEventListener("fetch", (event) => {
  if (event.request.method !== 'GET') {
    return;
  }
  var origin = self.location.origin;
  var key = event.request.url.substring(origin.length + 1);
  // Redirect URLs to the index.html
  if (key.indexOf('?v=') != -1) {
    key = key.split('?v=')[0];
  }
  if (event.request.url == origin || event.request.url.startsWith(origin + '/#') || key == '') {
    key = '/';
  }
  // If the URL is not the RESOURCE list then return to signal that the
  // browser should take over.
  if (!RESOURCES[key]) {
    return;
  }
  // If the URL is the index.html, perform an online-first request.
  if (key == '/') {
    return onlineFirst(event);
  }
  event.respondWith(caches.open(CACHE_NAME)
    .then((cache) =>  {
      return cache.match(event.request).then((response) => {
        // Either respond with the cached resource, or perform a fetch and
        // lazily populate the cache only if the resource was successfully fetched.
        return response || fetch(event.request).then((response) => {
          if (response && Boolean(response.ok)) {
            cache.put(event.request, response.clone());
          }
          return response;
        });
      })
    })
  );
});
self.addEventListener('message', (event) => {
  // SkipWaiting can be used to immediately activate a waiting service worker.
  // This will also require a page refresh triggered by the main worker.
  if (event.data === 'skipWaiting') {
    self.skipWaiting();
    return;
  }
  if (event.data === 'downloadOffline') {
    downloadOffline();
    return;
  }
});
// Download offline will check the RESOURCES for all files not in the cache
// and populate them.
async function downloadOffline() {
  var resources = [];
  var contentCache = await caches.open(CACHE_NAME);
  var currentContent = {};
  for (var request of await contentCache.keys()) {
    var key = request.url.substring(origin.length + 1);
    if (key == "") {
      key = "/";
    }
    currentContent[key] = true;
  }
  for (var resourceKey of Object.keys(RESOURCES)) {
    if (!currentContent[resourceKey]) {
      resources.push(resourceKey);
    }
  }
  return contentCache.addAll(resources);
}
// Attempt to download the resource online before falling back to
// the offline cache.
function onlineFirst(event) {
  return event.respondWith(
    fetch(event.request).then((response) => {
      return caches.open(CACHE_NAME).then((cache) => {
        cache.put(event.request, response.clone());
        return response;
      });
    }).catch((error) => {
      return caches.open(CACHE_NAME).then((cache) => {
        return cache.match(event.request).then((response) => {
          if (response != null) {
            return response;
          }
          throw error;
        });
      });
    })
  );
}
