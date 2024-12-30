# Unhandled Exception in Asynchronous Dart Code

This repository demonstrates a common error in asynchronous Dart code: improper exception handling. The `fetchData` function makes an HTTP request.  If the request fails or encounters an error during JSON decoding, the `catch` block prints an error message, but also rethrows the exception.  This is problematic because unhandled exceptions can crash your application.

## The Problem

The `rethrow` statement in the `catch` block propagates the exception up the call stack. While this may be useful in some contexts, it's often better to handle the exception locally, either by providing an alternative value, logging the error more comprehensively, or presenting a user-friendly error message.  The current implementation lacks proper error handling for a smoother user experience.

## The Solution

The solution provided shows how to gracefully handle the exception without crashing the app.  The solution handles the exception, provides default data or a user-friendly message instead of letting the app crash.