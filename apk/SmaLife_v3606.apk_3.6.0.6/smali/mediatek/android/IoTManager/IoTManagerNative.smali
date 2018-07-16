.class public Lmediatek/android/IoTManager/IoTManagerNative;
.super Ljava/lang/Object;
.source "IoTManagerNative.java"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const-string v0, "iotjni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 41
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    return-void
.end method


# virtual methods
.method public native AddFriend(Ljava/lang/String;)I
.end method

.method public native CtrlClientOffline(I)I
.end method

.method public native GetGPIO(I)[I
.end method

.method public native GetPWM(I)[I
.end method

.method public native GetUARTData(I)Ljava/lang/String;
.end method

.method public native InitControlServer(Ljava/lang/String;Ljava/lang/String;I)I
.end method

.method public native InitCtrlPassword(Ljava/lang/String;)I
.end method

.method public native InitSmartConnection()I
.end method

.method public native QueryClientInfo(I)[Lmediatek/android/IoTManager/ClientInfo;
.end method

.method public native SetCtrlPassword(Ljava/lang/String;)I
.end method

.method public native SetDataEncrypt(I)I
.end method

.method public native SetGPIO(III)I
.end method

.method public native SetPWM(ISSS)I
.end method

.method public native SetUARTData(ILjava/lang/String;I)I
.end method

.method public native StartSmartConnection(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;B)I
.end method

.method public native StopSmartConnection()I
.end method
