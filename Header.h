//
//  Header.h
//  WemoMagic
//
//  Created by Glen Ruhl on 9/14/14.
//  Copyright (c) 2014 MM. All rights reserved.
//

#ifndef WemoMagic_Header_h
#define WemoMagic_Header_h


enum {
    WeMoWiFiNetwork = 0,
    WeMo3GNetwork,
    WeMoNoNetwork
};



@interface WeMoNetworkManager : NSObject

/**
 * WeMoNetworkManager is a singleton class and this method returns the shared instance of WeMoNetworkManager interface.
 *
 * @param None
 * @return a singleton instance of WeMoNetworkManager interface if success else nil.
 */

+(WeMoNetworkManager*)sharedWeMoNetworkManager;

/**
 * Releases the memory occupied by WeMoNetworkManager instance.
 *
 * @param None
 * @return None.
 */

-(NSString*)accessPoint;


/**
 * networkConnection method can be used to rertrieve iOS device connection
 *      status(WiFi,3G, No Network etc.)
 *
 * @param None.
 * @return Check WeMoNetworkConnectionType enum for possible return values.
 */

#endif
