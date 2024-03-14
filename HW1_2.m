//
//  HW1_2.m
//  Objective-C
//
//  Created by User on 14.03.2024.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        int num1, num2, num3;
        
        NSLog(@"Введите три числа:");
        scanf("%d %d %d", &num1, &num2, &num3);
        
        int max = num1;
        if (num2 > max) {
            max = num2;
        }
        if (num3 > max) {
            max = num3;
        }
        
        NSLog(@"Наибольшее число: %d", max);
    }
    return 0;
}
