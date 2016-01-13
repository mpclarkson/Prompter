//
//  SwiftPromptTests.swift
//  SwiftPromptTests
//
//  Created by Matthew on 12/01/2016.
//  Copyright © 2016 Matthew Clarkson. All rights reserved.
//

import Nimble
import Quick

class PromptSpec: QuickSpec {
    
    override func spec() {
        
        describe("init withStyle") {
            
            struct Style: PrompterStyle {
                var defaultMessage = "foo"
            }
            
            let styledPrompter = Prompter(withStyle: Style())
            
            it("default message") {
                expect(styledPrompter.defaultMessage) == "foo"
            }
        }
    }
}

class ExtensionsSpec: QuickSpec {

    override func spec() {
        describe("string extension") {

            it("bool true") {
                let trues = ["y", "Y", "yes", "YES", "t", "T", "TRUE", "true", "1"]

                trues.forEach {
                    expect($0.bool) == true
                }
            }

            it("does not contain") {
                let falses = ["n", "N", "no", "NO", "f", "F", "False", "f", "0"]
                falses.forEach {
                    expect($0.bool) == false
                }
            }
        }

        describe("array extension") {

            let array = ["a", "b", "c"]

            it("getAtIndex successfulluy") {
                expect(array.getAtIndex(0)) == "a"
            }

            it("getAtIndex negative index") {
                expect(array.getAtIndex(-1)).to(beNil())
            }

            it("getAtIndex non existent index") {
                expect(array.getAtIndex(-3)).to(beNil())
            }

        }
    }
}


