.class public Lcom/mob/commons/SHARESDK;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/mob/commons/MobProduct;


# static fields
.field private static appKey:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static setAppKey(Ljava/lang/String;)V
    .locals 0
    .param p0, "appkey"    # Ljava/lang/String;

    .prologue
    sput-object p0, Lcom/mob/commons/SHARESDK;->appKey:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getDuid(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    invoke-static {p1, p0}, Lcom/mob/commons/authorize/DeviceAuthorizer;->authorize(Landroid/content/Context;Lcom/mob/commons/MobProduct;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getProductAppkey()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/mob/commons/SHARESDK;->appKey:Ljava/lang/String;

    return-object v0
.end method

.method public getProductTag()Ljava/lang/String;
    .locals 1

    const-string v0, "SHARESDK"

    return-object v0
.end method

.method public getSdkver()I
    .locals 1

    const v0, 0xeaa1

    return v0
.end method
