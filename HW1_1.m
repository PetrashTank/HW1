//
//  HW1_1.m
//  Objective-C
//
//  Created by User on 14.03.2024.
//


#import <Foundation/Foundation.h>
#import <math.h>

NSArray *solveQuadraticEquation(double a, double b, double c) {
    double discriminant = b*b - 4*a*c;
    if (discriminant > 0) {
        double x1 = (-b + sqrt(discriminant)) / (2*a);
        double x2 = (-b - sqrt(discriminant)) / (2*a);
        return @[@(x1), @(x2)];
    } else if (discriminant == 0) {
        double x = -b / (2*a);
        return @[@(x)];
    } else {
        return @[];
    }
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSArray *roots1 = solveQuadraticEquation(1, -8, 12);
        NSLog(@"Roots of x^2 – 8x + 12 = 0: %@", roots1);
        
        NSArray *roots2 = solveQuadraticEquation(12, -4, 2);
        NSLog(@"Roots of 12x^2 – 4x + 2 = 0: %@", roots2);
        
        NSArray *roots3 = solveQuadraticEquation(1, -100, -2);
        NSLog(@"Roots of x^2 – 100x - 2 = 0: %@", roots3);
    }
    return 0;
}
