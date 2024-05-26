from typing import List


class Solution:
    def merge(self, nums1: List[int], m: int, nums2: List[int], n: int) -> None:
        # Split the line into multiple lines to avoid exceeding the maximum character limit
        """
        Do not return anything, modify nums1 in-place instead.
        """
        del nums1[-n:]

        index_nums1 = 0
        index_nums2 = 0

        while index_nums2 < n:
            num1 = nums1[index_nums1]
            num2 = nums2[index_nums2]
            print(num1, num2, nums1, index_nums1)
            if num2 <= num1:
                nums1.insert(index_nums1, num2)
                index_nums2 += 1
            else:
                if index_nums1 >= len(nums1) - 1:
                    print("index_nums1", index_nums1)
                    nums1.append(num2)
                    index_nums1 += 1
                    index_nums2 += 1
                else:
                    index_nums1 += 1

    def merge2(self, nums1: List[int], m: int, nums2: List[int], n: int) -> None:
        """
        Do not return anything, modify nums1 in-place instead.
        """
        while m > 0 and n > 0:
            if nums1[m - 1] >= nums2[n - 1]:
                nums1[m + n - 1] = nums1[m - 1]
                m -= 1
            else:
                nums1[m + n - 1] = nums2[n - 1]
                n -= 1
        if n > 0:
            nums1[:n] = nums2[:n]
