.class public final enum Lcom/umeng/message/proguard/u;
.super Ljava/lang/Enum;
.source "UTMCLogFields.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/umeng/message/proguard/u;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/umeng/message/proguard/u;

.field private static final synthetic b:[Lcom/umeng/message/proguard/u;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 8
    new-instance v0, Lcom/umeng/message/proguard/u;

    const-string v1, "DEVICE_ID"

    invoke-direct {v0, v1, v2}, Lcom/umeng/message/proguard/u;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/umeng/message/proguard/u;->a:Lcom/umeng/message/proguard/u;

    .line 7
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/umeng/message/proguard/u;

    sget-object v1, Lcom/umeng/message/proguard/u;->a:Lcom/umeng/message/proguard/u;

    aput-object v1, v0, v2

    sput-object v0, Lcom/umeng/message/proguard/u;->b:[Lcom/umeng/message/proguard/u;

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
    .line 7
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/umeng/message/proguard/u;
    .locals 1

    .prologue
    .line 7
    const-class v0, Lcom/umeng/message/proguard/u;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/umeng/message/proguard/u;

    return-object v0
.end method

.method public static values()[Lcom/umeng/message/proguard/u;
    .locals 1

    .prologue
    .line 7
    sget-object v0, Lcom/umeng/message/proguard/u;->b:[Lcom/umeng/message/proguard/u;

    invoke-virtual {v0}, [Lcom/umeng/message/proguard/u;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/umeng/message/proguard/u;

    return-object v0
.end method
