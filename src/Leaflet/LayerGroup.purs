{-
  Author    : Tim Dysinger
  Copyright : 2014
  License   : MIT
-}

module Leaflet.LayerGroup where

import Control.Monad.Eff
import Leaflet.Types

foreign import layerGroupToILayer :: LayerGroup -> ILayer

foreign import addLayerGroupToMap :: forall e. LayerGroup -> Map -> Eff e LayerGroup

instance layerGroupLayer :: Layer LayerGroup where
  toILayer = layerGroupToILayer
  addTo = addLayerGroupToMap

foreign import layerGroup :: Array ILayer -> LayerGroup
