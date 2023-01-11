import re

from talon import Context, Module, actions

mod = Module()
ctx = Context()
ctx.matches = r"""
tag: user.swift
"""

@ctx.action_class("user")
class UserActions:

    def code_state_if():
        actions.user.insert_between("if ", "{")

    def code_state_else_if():
        actions.user.insert_between(" else if", "{")
    
    def code_state_else():
        actions.insert(" else {")
        actions.key("enter")

    def code_state_switch():
        actions.user.insert_between("switch ", " {")

    def code_state_case():
        actions.user.insert_between("case ", ":")

    def code_state_default():
        actions.insert("default:")
        actions.key("enter")
