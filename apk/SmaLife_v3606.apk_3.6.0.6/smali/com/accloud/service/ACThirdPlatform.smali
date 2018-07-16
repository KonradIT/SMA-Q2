.class public final enum Lcom/accloud/service/ACThirdPlatform;
.super Ljava/lang/Enum;
.source "ACThirdPlatform.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/accloud/service/ACThirdPlatform;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/accloud/service/ACThirdPlatform;

.field public static final enum FACEBOOK:Lcom/accloud/service/ACThirdPlatform;

.field public static final enum INSTAGRAM:Lcom/accloud/service/ACThirdPlatform;

.field public static final enum JINGDONG:Lcom/accloud/service/ACThirdPlatform;

.field public static final enum OTHER:Lcom/accloud/service/ACThirdPlatform;

.field public static final enum QQ:Lcom/accloud/service/ACThirdPlatform;

.field public static final enum SINA:Lcom/accloud/service/ACThirdPlatform;

.field public static final enum TWITTER:Lcom/accloud/service/ACThirdPlatform;

.field public static final enum WEIXIN:Lcom/accloud/service/ACThirdPlatform;


# instance fields
.field public provider:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 7
    new-instance v0, Lcom/accloud/service/ACThirdPlatform;

    const-string v1, "QQ"

    const-string v2, "qq"

    invoke-direct {v0, v1, v4, v2}, Lcom/accloud/service/ACThirdPlatform;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/accloud/service/ACThirdPlatform;->QQ:Lcom/accloud/service/ACThirdPlatform;

    .line 8
    new-instance v0, Lcom/accloud/service/ACThirdPlatform;

    const-string v1, "SINA"

    const-string v2, "weibo"

    invoke-direct {v0, v1, v5, v2}, Lcom/accloud/service/ACThirdPlatform;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/accloud/service/ACThirdPlatform;->SINA:Lcom/accloud/service/ACThirdPlatform;

    .line 9
    new-instance v0, Lcom/accloud/service/ACThirdPlatform;

    const-string v1, "WEIXIN"

    const-string v2, "weixin"

    invoke-direct {v0, v1, v6, v2}, Lcom/accloud/service/ACThirdPlatform;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/accloud/service/ACThirdPlatform;->WEIXIN:Lcom/accloud/service/ACThirdPlatform;

    .line 10
    new-instance v0, Lcom/accloud/service/ACThirdPlatform;

    const-string v1, "JINGDONG"

    const-string v2, "jingdong"

    invoke-direct {v0, v1, v7, v2}, Lcom/accloud/service/ACThirdPlatform;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/accloud/service/ACThirdPlatform;->JINGDONG:Lcom/accloud/service/ACThirdPlatform;

    .line 11
    new-instance v0, Lcom/accloud/service/ACThirdPlatform;

    const-string v1, "FACEBOOK"

    const-string v2, "facebook"

    invoke-direct {v0, v1, v8, v2}, Lcom/accloud/service/ACThirdPlatform;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/accloud/service/ACThirdPlatform;->FACEBOOK:Lcom/accloud/service/ACThirdPlatform;

    .line 12
    new-instance v0, Lcom/accloud/service/ACThirdPlatform;

    const-string v1, "TWITTER"

    const/4 v2, 0x5

    const-string v3, "twitter"

    invoke-direct {v0, v1, v2, v3}, Lcom/accloud/service/ACThirdPlatform;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/accloud/service/ACThirdPlatform;->TWITTER:Lcom/accloud/service/ACThirdPlatform;

    .line 13
    new-instance v0, Lcom/accloud/service/ACThirdPlatform;

    const-string v1, "INSTAGRAM"

    const/4 v2, 0x6

    const-string v3, "instagram"

    invoke-direct {v0, v1, v2, v3}, Lcom/accloud/service/ACThirdPlatform;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/accloud/service/ACThirdPlatform;->INSTAGRAM:Lcom/accloud/service/ACThirdPlatform;

    .line 14
    new-instance v0, Lcom/accloud/service/ACThirdPlatform;

    const-string v1, "OTHER"

    const/4 v2, 0x7

    const-string v3, "other"

    invoke-direct {v0, v1, v2, v3}, Lcom/accloud/service/ACThirdPlatform;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/accloud/service/ACThirdPlatform;->OTHER:Lcom/accloud/service/ACThirdPlatform;

    .line 6
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/accloud/service/ACThirdPlatform;

    sget-object v1, Lcom/accloud/service/ACThirdPlatform;->QQ:Lcom/accloud/service/ACThirdPlatform;

    aput-object v1, v0, v4

    sget-object v1, Lcom/accloud/service/ACThirdPlatform;->SINA:Lcom/accloud/service/ACThirdPlatform;

    aput-object v1, v0, v5

    sget-object v1, Lcom/accloud/service/ACThirdPlatform;->WEIXIN:Lcom/accloud/service/ACThirdPlatform;

    aput-object v1, v0, v6

    sget-object v1, Lcom/accloud/service/ACThirdPlatform;->JINGDONG:Lcom/accloud/service/ACThirdPlatform;

    aput-object v1, v0, v7

    sget-object v1, Lcom/accloud/service/ACThirdPlatform;->FACEBOOK:Lcom/accloud/service/ACThirdPlatform;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/accloud/service/ACThirdPlatform;->TWITTER:Lcom/accloud/service/ACThirdPlatform;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/accloud/service/ACThirdPlatform;->INSTAGRAM:Lcom/accloud/service/ACThirdPlatform;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/accloud/service/ACThirdPlatform;->OTHER:Lcom/accloud/service/ACThirdPlatform;

    aput-object v2, v0, v1

    sput-object v0, Lcom/accloud/service/ACThirdPlatform;->$VALUES:[Lcom/accloud/service/ACThirdPlatform;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p3, "provider"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 22
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 23
    iput-object p3, p0, Lcom/accloud/service/ACThirdPlatform;->provider:Ljava/lang/String;

    .line 24
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/accloud/service/ACThirdPlatform;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 6
    const-class v0, Lcom/accloud/service/ACThirdPlatform;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/accloud/service/ACThirdPlatform;

    return-object v0
.end method

.method public static values()[Lcom/accloud/service/ACThirdPlatform;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/accloud/service/ACThirdPlatform;->$VALUES:[Lcom/accloud/service/ACThirdPlatform;

    invoke-virtual {v0}, [Lcom/accloud/service/ACThirdPlatform;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/accloud/service/ACThirdPlatform;

    return-object v0
.end method


# virtual methods
.method public setProvider(Ljava/lang/String;)V
    .locals 0
    .param p1, "provider"    # Ljava/lang/String;

    .prologue
    .line 19
    iput-object p1, p0, Lcom/accloud/service/ACThirdPlatform;->provider:Ljava/lang/String;

    .line 20
    return-void
.end method
