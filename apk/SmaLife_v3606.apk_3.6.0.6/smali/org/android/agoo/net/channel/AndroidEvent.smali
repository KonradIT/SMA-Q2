.class public final enum Lorg/android/agoo/net/channel/AndroidEvent;
.super Ljava/lang/Enum;
.source "AndroidEvent.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/android/agoo/net/channel/AndroidEvent;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lorg/android/agoo/net/channel/AndroidEvent;

.field private static final synthetic c:[Lorg/android/agoo/net/channel/AndroidEvent;


# instance fields
.field private b:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 4
    new-instance v0, Lorg/android/agoo/net/channel/AndroidEvent;

    const-string v1, "NET_CHANGED"

    invoke-direct {v0, v1, v2, v3}, Lorg/android/agoo/net/channel/AndroidEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/android/agoo/net/channel/AndroidEvent;->a:Lorg/android/agoo/net/channel/AndroidEvent;

    .line 3
    new-array v0, v3, [Lorg/android/agoo/net/channel/AndroidEvent;

    sget-object v1, Lorg/android/agoo/net/channel/AndroidEvent;->a:Lorg/android/agoo/net/channel/AndroidEvent;

    aput-object v1, v0, v2

    sput-object v0, Lorg/android/agoo/net/channel/AndroidEvent;->c:[Lorg/android/agoo/net/channel/AndroidEvent;

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
    iput p3, p0, Lorg/android/agoo/net/channel/AndroidEvent;->b:I

    .line 9
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/android/agoo/net/channel/AndroidEvent;
    .locals 1

    .prologue
    .line 3
    const-class v0, Lorg/android/agoo/net/channel/AndroidEvent;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/android/agoo/net/channel/AndroidEvent;

    return-object v0
.end method

.method public static values()[Lorg/android/agoo/net/channel/AndroidEvent;
    .locals 1

    .prologue
    .line 3
    sget-object v0, Lorg/android/agoo/net/channel/AndroidEvent;->c:[Lorg/android/agoo/net/channel/AndroidEvent;

    invoke-virtual {v0}, [Lorg/android/agoo/net/channel/AndroidEvent;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/android/agoo/net/channel/AndroidEvent;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .prologue
    .line 12
    iget v0, p0, Lorg/android/agoo/net/channel/AndroidEvent;->b:I

    return v0
.end method
