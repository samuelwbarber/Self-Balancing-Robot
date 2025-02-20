import mmap
import os

def write_to_shared_memory(message):
    size = 1024
    fd = os.open('/dev/shm/testshm', os.O_CREAT | os.O_RDWR)
    os.ftruncate(fd, size)
    with mmap.mmap(fd, size) as m:
        m.seek(0)
        m.write(b'\x00' * size)
        m.seek(0)
        m.write(message.encode('utf-8'))
    os.close(fd)

def read_from_shared_memory():
    # Size of the shared memory
    size = 1024
    
    # Open a file descriptor
    fd = os.open('/dev/shm/cpp_to_python_shm', os.O_RDONLY)
    
    # Memory-map the file
    with mmap.mmap(fd, size, access=mmap.ACCESS_READ) as m:
        # Read from the shared memory
        m.seek(0)
        message = m.read(size).rstrip(b'\x00').decode('utf-8')
    
    # Close the file descriptor
    os.close(fd)
    
    return message


write_to_shared_memory("X100Y400")
write_to_shared_memory("X200Y400")
