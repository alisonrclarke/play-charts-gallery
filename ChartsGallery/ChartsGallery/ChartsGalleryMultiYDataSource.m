//
//  ChartsGalleryMultiYDataSource.m
//  ChartsGallery
//
//  Created by Alison Clarke on 09/09/2014.
//
//  Copyright 2014 Scott Logic
//
//  Licensed under the Apache License, Version 2.0 (the "License");
//  you may not use this file except in compliance with the License.
//  You may obtain a copy of the License at
//
//  http://www.apache.org/licenses/LICENSE-2.0
//
//  Unless required by applicable law or agreed to in writing, software
//  distributed under the License is distributed on an "AS IS" BASIS,
//  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
//  See the License for the specific language governing permissions and
//  limitations under the License.
//

#import "ChartsGalleryMultiYDataSource.h"

@implementation ChartsGalleryMultiYDataSource

- (id)yValuesAtIndex:(NSInteger)dataIndex forSeriesAtIndex:(NSInteger)seriesIndex {
  // Should be implemented in subclass
  return nil;
}

- (id<SChartData>)sChart:(ShinobiChart *)chart dataPointAtIndex:(NSInteger)dataIndex forSeriesAtIndex:(NSInteger)seriesIndex {
  SChartMultiYDataPoint *dp = [[SChartMultiYDataPoint alloc] init];
  dp.xValue = [self xValueAtIndex:dataIndex forSeriesAtIndex:seriesIndex];
  dp.yValues = [self yValuesAtIndex:dataIndex forSeriesAtIndex:seriesIndex];
  return dp;
}

@end
