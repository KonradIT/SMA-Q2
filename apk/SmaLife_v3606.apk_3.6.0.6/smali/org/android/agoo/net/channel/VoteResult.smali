.class public final enum Lorg/android/agoo/net/channel/VoteResult;
.super Ljava/lang/Enum;
.source "VoteResult.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/android/agoo/net/channel/VoteResult;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lorg/android/agoo/net/channel/VoteResult;

.field public static final enum b:Lorg/android/agoo/net/channel/VoteResult;

.field private static final synthetic d:[Lorg/android/agoo/net/channel/VoteResult;


# instance fields
.field private c:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 4
    new-instance v0, Lorg/android/agoo/net/channel/VoteResult;

    const-string v1, "REMOTE"

    invoke-direct {v0, v1, v2, v3}, Lorg/android/agoo/net/channel/VoteResult;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/android/agoo/net/channel/VoteResult;->a:Lorg/android/agoo/net/channel/VoteResult;

    new-instance v0, Lorg/android/agoo/net/channel/VoteResult;

    const-string v1, "LOCAL"

    invoke-direct {v0, v1, v3, v2}, Lorg/android/agoo/net/channel/VoteResult;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/android/agoo/net/channel/VoteResult;->b:Lorg/android/agoo/net/channel/VoteResult;

    .line 3
    const/4 v0, 0x2

    new-array v0, v0, [Lorg/android/agoo/net/channel/VoteResult;

    sget-object v1, Lorg/android/agoo/net/channel/VoteResult;->a:Lorg/android/agoo/net/channel/VoteResult;

    aput-object v1, v0, v2

    sget-object v1, Lorg/android/agoo/net/channel/VoteResult;->b:Lorg/android/agoo/net/channel/VoteResult;

    aput-object v1, v0, v3

    sput-object v0, Lorg/android/agoo/net/channel/VoteResult;->d:[Lorg/android/agoo/net/channel/VoteResult;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 7
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 8
    iput p3, p0, Lorg/android/agoo/net/channel/VoteResult;->c:I

    .line 9
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/android/agoo/net/channel/VoteResult;
    .locals 1

    .prologue
    .line 3
    const-class v0, Lorg/android/agoo/net/channel/VoteResult;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/android/agoo/net/channel/VoteResult;

    return-object v0
.end method

.method public static values()[Lorg/android/agoo/net/channel/VoteResult;
    .locals 1

    .prologue
    .line 3
    sget-object v0, Lorg/android/agoo/net/channel/VoteResult;->d:[Lorg/android/agoo/net/channel/VoteResult;

    invoke-virtual {v0}, [Lorg/android/agoo/net/channel/VoteResult;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/android/agoo/net/channel/VoteResult;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .prologue
    .line 12
    iget v0, p0, Lorg/android/agoo/net/channel/VoteResult;->c:I

    return v0
.end method
