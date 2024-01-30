importScripts("https://www.gstatic.com/firebasejs/9.10.0/firebase-app-compat.js");
importScripts("https://www.gstatic.com/firebasejs/9.10.0/firebase-messaging-compat.js");

firebase.initializeApp({
    apiKey: 'AIzaSyAlMY4UWjrq2Q0CgsvnaXE1NWoG9FHeB6g',
    appId: '1:42003969608:web:29a98b843ae8df2bfa8a7d',
    messagingSenderId: '42003969608',
    projectId: 'billdivide-app',
    authDomain: 'billdivide-app.firebaseapp.com',
    storageBucket: 'billdivide-app.appspot.com',
    storageBucket: 'flutterfire-e2e-tests.appspot.com',
});
// Necessary to receive background messages:
const messaging = firebase.messaging();

// Optional:
messaging.onBackgroundMessage((m) => {
    console.log("onBackgroundMessage", m);
});