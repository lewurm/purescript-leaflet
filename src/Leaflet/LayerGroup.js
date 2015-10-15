"use strict";

// module Leaflet.LayerGroup

exports.layerGroupToILayer = function(l) { return l; }

exports.addLayerGroupToMap = function(l) {
    return function(m) {
        return function() {
            return l.addTo(m);
        }
    }
}

exports.LayerGroup = function(ls) { return L.layerGroup(ls); }
