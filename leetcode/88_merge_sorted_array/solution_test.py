import pytest
from solution import Solution


@pytest.mark.parametrize(
    "nums1, m, nums2, n, expected",
    [
        # Test case 1
        ([[1, 2, 3, 0, 0, 0], 3, [2, 5, 6], 3, [1, 2, 2, 3, 5, 6]]),
        # Test case 2
        ([[1], 1, [], 0, [1]]),
        # Test case 3
        ([[0], 0, [1], 1, [1]]),
    ],
)
def test_merge(nums1, m, nums2, n, expected):
    solution = Solution()
    solution.merge2(nums1, m, nums2, n)
    assert nums1 == expected
