from std.algorithm import parallelize

@parameter
def work(i: Int):
    print(t"Doing {i}")
    pass

def main():
    parallelize[work](4)
    print("Done")