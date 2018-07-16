.class public final enum Lcom/accloud/service/ACDeviceSecurityMode;
.super Ljava/lang/Enum;
.source "ACDeviceSecurityMode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/accloud/service/ACDeviceSecurityMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/accloud/service/ACDeviceSecurityMode;

.field public static final enum DYNAMIC_ENCRYPTED:Lcom/accloud/service/ACDeviceSecurityMode;

.field public static final enum NO_ENCRYPTED:Lcom/accloud/service/ACDeviceSecurityMode;

.field public static final enum STATIC_ENCRYPTED:Lcom/accloud/service/ACDeviceSecurityMode;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 7
    new-instance v0, Lcom/accloud/service/ACDeviceSecurityMode;

    const-string v1, "NO_ENCRYPTED"

    invoke-direct {v0, v1, v2}, Lcom/accloud/service/ACDeviceSecurityMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/accloud/service/ACDeviceSecurityMode;->NO_ENCRYPTED:Lcom/accloud/service/ACDeviceSecurityMode;

    .line 8
    new-instance v0, Lcom/accloud/service/ACDeviceSecurityMode;

    const-string v1, "STATIC_ENCRYPTED"

    invoke-direct {v0, v1, v3}, Lcom/accloud/service/ACDeviceSecurityMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/accloud/service/ACDeviceSecurityMode;->STATIC_ENCRYPTED:Lcom/accloud/service/ACDeviceSecurityMode;

    .line 9
    new-instance v0, Lcom/accloud/service/ACDeviceSecurityMode;

    const-string v1, "DYNAMIC_ENCRYPTED"

    invoke-direct {v0, v1, v4}, Lcom/accloud/service/ACDeviceSecurityMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/accloud/service/ACDeviceSecurityMode;->DYNAMIC_ENCRYPTED:Lcom/accloud/service/ACDeviceSecurityMode;

    .line 6
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/accloud/service/ACDeviceSecurityMode;

    sget-object v1, Lcom/accloud/service/ACDeviceSecurityMode;->NO_ENCRYPTED:Lcom/accloud/service/ACDeviceSecurityMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/accloud/service/ACDeviceSecurityMode;->STATIC_ENCRYPTED:Lcom/accloud/service/ACDeviceSecurityMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/accloud/service/ACDeviceSecurityMode;->DYNAMIC_ENCRYPTED:Lcom/accloud/service/ACDeviceSecurityMode;

    aput-object v1, v0, v4

    sput-object v0, Lcom/accloud/service/ACDeviceSecurityMode;->$VALUES:[Lcom/accloud/service/ACDeviceSecurityMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 6
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/accloud/service/ACDeviceSecurityMode;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 6
    const-class v0, Lcom/accloud/service/ACDeviceSecurityMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/accloud/service/ACDeviceSecurityMode;

    return-object v0
.end method

.method public static values()[Lcom/accloud/service/ACDeviceSecurityMode;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/accloud/service/ACDeviceSecurityMode;->$VALUES:[Lcom/accloud/service/ACDeviceSecurityMode;

    invoke-virtual {v0}, [Lcom/accloud/service/ACDeviceSecurityMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/accloud/service/ACDeviceSecurityMode;

    return-object v0
.end method
