/*eslint-env browser */
/*global chrome, Utils */

(function () {
    'use strict';
    
    function getIndex(icons) {
        var i, len = icons.length, result = [];
        for (i = 0; i < len; i += 1) {
            if (icons.hasOwnProperty(i)) {
                result[icons[i].id] = icons[i].small;
            }
        }
        return result;
    }
    
    Utils.JSON.parseFromURL(chrome.extension.getURL("/icons.json"), function (icons) {
        var index = getIndex(icons);
        
//        function getSmallIconPathById(iconId) {
//            var i, len = icons.length;
//            for (i = 0; i < len; i += 1) {
//                if (icons.hasOwnProperty(i)) {
//                    if (icons[i].id === iconId) {
//                        return icons[i].small;
//                    }
//                }
//            }
//        }
        
        function showToolbarButton(tab) {
            if (tab) {
                chrome.pageAction.show(tab.id);
                var iconId = localStorage.getItem(tab.url);
                if (iconId !== null) {
                    chrome.pageAction.setIcon({
                        path: index[iconId],
                        tabId: tab.id
                    });
                }
            }
        }

        // Fires when the active tab in a window changes. 
        // Note that the tab's URL may not be set at the time this event fired, but you can listen to onUpdated events to be notified when a URL is set.
        // https://developer.chrome.com/extensions/tabs#event-onActivated
        chrome.tabs.onActivated.addListener(function (activeInfo) {
            setTimeout(function () {
                chrome.tabs.get(activeInfo.tabId, function (tab) {
                    showToolbarButton(tab);
                });
            }, 200);
        });

        // Fired when a tab is updated.
        // https://developer.chrome.com/extensions/tabs#event-onUpdated
        chrome.tabs.onUpdated.addListener(function (tabId, changeInfo, tab) {
            showToolbarButton(tab);
        });

        // Gets all tabs that have the specified properties, or all tabs if no properties are specified.
        // https://developer.chrome.com/extensions/tabs#method-query
        chrome.tabs.query({ active: true, currentWindow: true }, function (tabs) {
            showToolbarButton(tabs[0]);
        });
        
    });

}());
