//
//  ActionStageExtensions.swift
//  Pods
//
//  Created by Harly on 2017/9/22.
//
//

import UIKit

internal class MGWingWatcher: LHWWatcher {
    var actionHandler: LHWHandler?
    
    init() {
        actionHandler = LHWHandler(delegate : self)
    }
    
    static let shared: MGWingWatcher = MGWingWatcher()
}

extension LHWActionStage {
    public func requestActor(path: String, options: [String: Any]?) {
        requestActor(path: path, options: options, watcher: MGWingWatcher.shared)
    }
}
