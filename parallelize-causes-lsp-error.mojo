from std.algorithm import parallelize


def main():
    @parameter
    def work(i: Int):
        print(t"Doing {i}")
        pass

    parallelize[work](4)
    print("Done")