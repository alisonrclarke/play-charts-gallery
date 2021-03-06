//
//  ChartsGalleryDataLabelDataSource.m
//  ChartsGallery
//
//  Created by Daniel Allsop on 16/12/2014.
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

#import "ChartsGalleryDataLabelDataSource.h"
#import "ShinobiPlayUtils/UIColor+SPUColor.h"
#import "ShinobiPlayUtils/UIFont+SPUFont.h"

@implementation ChartsGalleryDataLabelDataSource

- (SChartSeries *)sChart:(ShinobiChart *)chart seriesAtIndex:(NSInteger)index {
  SChartBarSeries *series = [SChartBarSeries new];
  series.title = [self.seriesNames[index] capitalizedString];
  series.stackIndex = @1;
  series.baseline = @0;
  series.style.dataPointLabelStyle.showLabels = YES;
  series.style.dataPointLabelStyle.font = [UIFont boldShinobiFontOfSize:16];
  series.style.dataPointLabelStyle.textColor = [UIColor whiteColor];
  return series;
}

@end
