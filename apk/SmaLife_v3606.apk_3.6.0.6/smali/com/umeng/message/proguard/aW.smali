.class public final enum Lcom/umeng/message/proguard/aW;
.super Ljava/lang/Enum;
.source "PlatformEnum.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/umeng/message/proguard/aW;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/umeng/message/proguard/aW;

.field public static final enum b:Lcom/umeng/message/proguard/aW;

.field public static final enum c:Lcom/umeng/message/proguard/aW;

.field public static final enum d:Lcom/umeng/message/proguard/aW;

.field private static final synthetic f:[Lcom/umeng/message/proguard/aW;


# instance fields
.field private e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 8
    new-instance v0, Lcom/umeng/message/proguard/aW;

    const-string v1, "ARM"

    const-string v2, "arm"

    invoke-direct {v0, v1, v3, v2}, Lcom/umeng/message/proguard/aW;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/umeng/message/proguard/aW;->a:Lcom/umeng/message/proguard/aW;

    new-instance v0, Lcom/umeng/message/proguard/aW;

    const-string v1, "ARMV7"

    const-string v2, "arm"

    invoke-direct {v0, v1, v4, v2}, Lcom/umeng/message/proguard/aW;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/umeng/message/proguard/aW;->b:Lcom/umeng/message/proguard/aW;

    new-instance v0, Lcom/umeng/message/proguard/aW;

    const-string v1, "MIPS"

    const-string v2, "mips"

    invoke-direct {v0, v1, v5, v2}, Lcom/umeng/message/proguard/aW;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/umeng/message/proguard/aW;->c:Lcom/umeng/message/proguard/aW;

    new-instance v0, Lcom/umeng/message/proguard/aW;

    const-string v1, "X86"

    const-string v2, "x86"

    invoke-direct {v0, v1, v6, v2}, Lcom/umeng/message/proguard/aW;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/umeng/message/proguard/aW;->d:Lcom/umeng/message/proguard/aW;

    .line 6
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/umeng/message/proguard/aW;

    sget-object v1, Lcom/umeng/message/proguard/aW;->a:Lcom/umeng/message/proguard/aW;

    aput-object v1, v0, v3

    sget-object v1, Lcom/umeng/message/proguard/aW;->b:Lcom/umeng/message/proguard/aW;

    aput-object v1, v0, v4

    sget-object v1, Lcom/umeng/message/proguard/aW;->c:Lcom/umeng/message/proguard/aW;

    aput-object v1, v0, v5

    sget-object v1, Lcom/umeng/message/proguard/aW;->d:Lcom/umeng/message/proguard/aW;

    aput-object v1, v0, v6

    sput-object v0, Lcom/umeng/message/proguard/aW;->f:[Lcom/umeng/message/proguard/aW;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 12
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 13
    iput-object p3, p0, Lcom/umeng/message/proguard/aW;->e:Ljava/lang/String;

    .line 14
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/umeng/message/proguard/aW;
    .locals 1

    .prologue
    .line 6
    const-class v0, Lcom/umeng/message/proguard/aW;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/umeng/message/proguard/aW;

    return-object v0
.end method

.method public static values()[Lcom/umeng/message/proguard/aW;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/umeng/message/proguard/aW;->f:[Lcom/umeng/message/proguard/aW;

    invoke-virtual {v0}, [Lcom/umeng/message/proguard/aW;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/umeng/message/proguard/aW;

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/umeng/message/proguard/aW;->e:Ljava/lang/String;

    return-object v0
.end method
