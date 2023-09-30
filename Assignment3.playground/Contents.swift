import UIKit

func firstProblem() {
    print("--------------- First Problem ---------------")
    /*
     შექმენით array, შემდეგ პირველ და ბოლო ელემენტს გაუცვალეთ ადგილი, გამზადებული ან უკვე არსებული ფუნქციის გარეშე.  (array-ის ტიპს არაქვს მნიშვნელობა).
     */
    
    var ufcChampions = ["Jon Jones", "Jamahal Hill", "Sean Strickland", "Leon Edwards"]
    
    let swap = ufcChampions[0]
    ufcChampions[0] = ufcChampions[ufcChampions.count - 1]
    ufcChampions[ufcChampions.count - 1] = swap
    
    print(ufcChampions)
}

func secondProblem() {
    print()
    print("--------------- Second Problem ---------------")
    /*
     შექმენით array, მასში წაშალეთ ნახევარი ელემენტები, თუ კენტი რაოდენობის იქნა დატოვეთ ნაკლები და წაშალეთ მეტი.  მაგ.: თუ იყო 11 ელემენტი 5 დატოვეთ და 6 წაშალეთ. და დაბეჭდეთ მიღებული შედეგი. (array-ის ტიპს არაქვს მნიშვნელობა).
     */
    
    var lostNumbers = [4, 8, 15, 16, 23, 42]
    
    let firstIndex = 0
    let lastIndex: Int
    
    if lostNumbers.count.isMultiple(of: 2) {
        lastIndex = lostNumbers.count / 2 - 1
    } else {
        lastIndex = lostNumbers.count / 2 - 1
    }
    
    lostNumbers.removeSubrange(firstIndex...lastIndex)
    print(lostNumbers)
}

func thirdProblem() {
    print()
    print("--------------- Third Problem ---------------")
    /*
     შექმენით Int-ების array, შეავსეთ ის 0-იდან 10-ის ჩათვლით რიცხვებით. loop-ის გამოყენებით დაშალეთ ეს array 2 array-იდ. ერთში გადაიტანეთ კენტი რიცხვები, მეორეში კი ლუწი რიცხვები, დაბეჭდეთ ორივე მიღებული array.
     */
    
    var originalArr = [Int]()
    var evenNumbersArr = [Int]()
    var oddNumbersArr = [Int]()
    
    for i in 1...10 {
        originalArr.append(i)
    }
    
    for num in originalArr {
        if num.isMultiple(of: 2) {
            evenNumbersArr.append(num)
        } else {
            oddNumbersArr.append(num)
        }
    }
    
    print("Original Array: \(originalArr)")
    print("Even Numbers Array: \(evenNumbersArr)")
    print("Odd Numbers Array: \(oddNumbersArr)")
}

func fourthProblem() {
    print()
    print("--------------- Fourth Problem ---------------")
    /*
     შექმენით Double-ების array, შეავსეთ ის თქვენთვის სასურველი რიცხვებით.  loop-ის გამოყენებით იპოვეთ ყველაზე დიდი რიცხვი ამ array-ში.
     */
    
    var max = 0.0
    let doubleArr = [2.88, 9.0, 12.15, 288.1, -19]
    
    for num in doubleArr {
        if num > max {
            max = num
        }
    }
    print("Max is \(max)")
}

func fifthProblem() {
    print()
    print("--------------- Fifth Problem ---------------")
    /*
     შექმენით ორი Int-ების array, შეავსეთ პირველი array 8, 4, 9, 9, 0, 2, და მეორე array 1, 0, 9, 2, 3, 7, 0, 1 ამ რიცხვებით. გააერთიანეთ ეს ორი array ერთ დასორტილ array-ში, ანუ შედეგი უნდა მიიღოთ ასეთი: 0, 0, 0, 1, 1, 2, 2, 3, 4, 7, 8, 9, 9, არ გამოიყენოთ sorted() ან რაიმე სხვა უკვე არსებული მეთოდი swift-იდან. დაბეჭდეთ მიღებული დასორტილი array.
     */
    
    var firstArr = [8, 4, 9, 9, 0, 2]
    var secondArr = [1, 0, 9, 2, 3, 7, 0, 1]
    
    var finalArray = firstArr + secondArr
    
    for i in 0..<finalArray.count {
        for j in 0..<finalArray.count{
            var temp = 0
            if finalArray[i] < finalArray[j] {
                temp = finalArray[i]
                finalArray[i] = finalArray[j]
                finalArray[j] = temp
            }
        }
    }
    print("Sorted Array: \(finalArray)")
    
}

func sixthProblem() {
    print()
    print("--------------- Sixth Problem ---------------")
    /* შექმენით String ტიპის ცვლადი და შეამოწმეთ არის თუ არა ყველა ჩარაქტერი ამ სტრინგში უნიკალური. გამოიყენეთ Set-ი ამ თასკის შესასრულებლად.
     */
    
    let str = "Jon Jones"
    let charSet = Set(str)
    
    if str.count == charSet.count {
        print("There are no repeating letters in \(str)")
    } else {
        print("There are repeting letters in \(str)")
    }
}

func seventhProblem() {
    print()
    print("--------------- Seventh Problem ---------------")
    /*
     შექმენით ორი Int-ების Set. გამოიყენეთ მათზე Set-ის მეთოდები როგორიცაა: union, intersection და difference. დაბეჭდეთ შედეგები.
     */
    
    let firstSet: Set<Int> = [2, 3, 6, 19, 20, 26]
    let secondSet: Set<Int> = [11, 67, 6, 10, 100, 43, 19]
    
    let unionSet = firstSet.union(secondSet)
    print(unionSet)
    
    let intersectionSet = firstSet.intersection(secondSet)
    print(intersectionSet)
    
    let differenceSet = firstSet.symmetricDifference(secondSet)
    print(differenceSet)
}

func eighthProblem() {
    print()
    print("--------------- Eighth Problem ---------------")
    /*
     შექმენით ორი String-ის Set. შეამოწმეთ არის თუ არა პირველი String-ის Set, მეორეს sub-Set-ი. დაბეჭდეთ შედეგი.
     */
    
    let firstSet: Set<String> = ["Jon Jones"]
    let secondSet: Set<String> = ["Jon Jones", "Jamahal Hill"]
    
    if firstSet.isSubset(of: secondSet) {
        print("First Set is a Subset of the second Set")
    } else {
        print("Not a Subset")
    }
}

func ninthProblem() {
    print()
    print("--------------- Ninth Problem ---------------")
    /*
     შექმენით array, შეავსეთ ისინი ელემენტებით. შეამოწმეთ და დაბეჭდეთ: "array-ში ყველა ელემენტი განსხვავებულია" ან "array შეიცავს მსგავს ელემენტებს"  (array-ს ტიპს არაქვს მნიშვნელობა.)
     */
    
    let numArray = [4, 8, 15, 16, 23, 42]
    let intSet = Set(numArray)
    
    if numArray.count == intSet.count {
        print("array-ში ყველა ელემენტი განსხვავებულია")
    } else {
        print("array შეიცავს მსგავს ელემენტებს")
    }
}

func tenthProblem() {
    print()
    print("--------------- Tenth Problem ---------------")
    /*
     შექმენით Dictionary, სადაც იქნება ფილმის სახელები და მათი რეიტინგები, რეიტინგი (0-10). დაამატეთ მინიმუმ 5 ფილმი, ამის შემდეგ გამოთვალეთ ამ Dictionary-ში არსებული ფილმების საშვალო რეიტინგი. დაბეჭდეთ მიღებული შედეგი.
     */
    
    var movieDictionary = [
        "The Aparment": 8.3,
        "Some Like It Hot": 8.2,
        "Sabrina": 7.6,
        "Sunset Blvd": 8.4,
        "French Without Tears": 6.8
    ]
    
    var sum = 0.0
    
    for value in movieDictionary.values {
        sum += value
    }
    
    let avgRating = sum / Double(movieDictionary.count)
    let formattedRating = String(format: "%.1f", avgRating)
    print("Average Rating is \(formattedRating)")
}

firstProblem()
secondProblem()
thirdProblem()
fourthProblem()
fifthProblem()
sixthProblem()
seventhProblem()
eighthProblem()
ninthProblem()
tenthProblem()
