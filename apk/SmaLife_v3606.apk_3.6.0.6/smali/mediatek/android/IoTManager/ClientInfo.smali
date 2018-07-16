.class public Lmediatek/android/IoTManager/ClientInfo;
.super Ljava/lang/Object;
.source "ClientInfo.java"


# instance fields
.field public ClientID:I

.field public IPAddress:Ljava/lang/String;

.field public ProductName:Ljava/lang/String;

.field public ProductType:Ljava/lang/String;

.field public VendorName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public SetID(I)V
    .locals 0
    .param p1, "ID"    # I

    .prologue
    .line 11
    iput p1, p0, Lmediatek/android/IoTManager/ClientInfo;->ClientID:I

    .line 12
    return-void
.end method

.method public SetIPAddr(Ljava/lang/String;)V
    .locals 0
    .param p1, "IPAddr"    # Ljava/lang/String;

    .prologue
    .line 27
    iput-object p1, p0, Lmediatek/android/IoTManager/ClientInfo;->IPAddress:Ljava/lang/String;

    .line 28
    return-void
.end method

.method public SetProductName(Ljava/lang/String;)V
    .locals 0
    .param p1, "Name"    # Ljava/lang/String;

    .prologue
    .line 23
    iput-object p1, p0, Lmediatek/android/IoTManager/ClientInfo;->ProductName:Ljava/lang/String;

    .line 24
    return-void
.end method

.method public SetProductType(Ljava/lang/String;)V
    .locals 0
    .param p1, "Type"    # Ljava/lang/String;

    .prologue
    .line 19
    iput-object p1, p0, Lmediatek/android/IoTManager/ClientInfo;->ProductType:Ljava/lang/String;

    .line 20
    return-void
.end method

.method public SetVendorName(Ljava/lang/String;)V
    .locals 0
    .param p1, "Vendor"    # Ljava/lang/String;

    .prologue
    .line 15
    iput-object p1, p0, Lmediatek/android/IoTManager/ClientInfo;->VendorName:Ljava/lang/String;

    .line 16
    return-void
.end method
