from solution import Solution


def test_merge():
    solution = Solution()

    # Test case 1
    nums1 = [1, 2, 3, 0, 0, 0]
    m = 3
    nums2 = [2, 5, 6]
    n = 3
    solution.merge2(nums1, m, nums2, n)
    assert nums1 == [1, 2, 2, 3, 5, 6]

    # Test case 2
    nums1 = [1]
    m = 1
    nums2 = []
    n = 0
    solution.merge2(nums1, m, nums2, n)
    assert nums1 == [1]

    # Test case 3
    nums1 = [0]
    m = 0
    nums2 = [1]
    n = 1
    solution.merge2(nums1, m, nums2, n)
    assert nums1 == [1]
