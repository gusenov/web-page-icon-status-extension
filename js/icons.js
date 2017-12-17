/*eslint-env browser */
/*eslint-disable no-console */
/*jslint devel: true*/
/*global chrome, Utils */

(function () {
    'use strict';
    
    function loadIcons() {
        Utils.JSON.parseFromURL(chrome.extension.getURL("/icons.json"), function (icons) {
            var container = document.getElementById("icons"),
                imgTag;
            icons.map(function (icon) {
                imgTag = document.createElement("img");
                imgTag.src = icon.big;
                imgTag.setAttribute("id", icon.id);
                imgTag.addEventListener("click", function () {
                    chrome.tabs.query({ active: true, currentWindow: true }, function (tabs) {
                        localStorage.setItem(tabs[0].url, icon.id);
                        chrome.pageAction.setIcon({ path: icon.small, tabId: tabs[0].id }, function () {
                            window.close();
                        });
                    });
                });
                container.appendChild(imgTag);
            });
        });
    }
    
    document.addEventListener('DOMContentLoaded', function () {
        loadIcons();
    });

}());
