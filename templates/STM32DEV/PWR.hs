{-# LANGUAGE DataKinds #-}
{-# LANGUAGE QuasiQuotes #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE TypeFamilies #-}

module @modns@ where

import Ivory.Language
import Ivory.HW
import Ivory.BSP.STM32@dev@.MemoryMap (pwr_periph_base)

@regs@
