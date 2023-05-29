# ConcurrencyDemo
Concurrency,Sync,Async,Serial, Concurrent queue,Thread with example in Swift

In this code, there is a function named queueTesting that demonstrates the behavior of different queue types (serial and concurrent) and execution modes (sync and async).

The myQueue variable is created as a custom dispatch queue with the label "my.testing.queue" and concurrent attributes, allowing multiple tasks to execute concurrently.

The first task, Task 1, is performed synchronously on the custom queue using myQueue.sync. It prints a start message, performs a loop that calculates and prints values, and then prints a completion message.

Similarly, the second task, Task 2, is also performed synchronously on the custom queue. It follows the same structure as Task 1.

The difference between synchronous and asynchronous execution is that synchronous tasks block the current thread until they complete, while asynchronous tasks return immediately, allowing the caller to continue without waiting for the task to finish. In this code, both tasks are performed synchronously, so the execution waits for each task to complete before moving on to the next one.
