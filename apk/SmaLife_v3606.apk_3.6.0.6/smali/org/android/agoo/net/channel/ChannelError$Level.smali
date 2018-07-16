.class public final enum Lorg/android/agoo/net/channel/ChannelError$Level;
.super Ljava/lang/Enum;
.source "ChannelError.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/android/agoo/net/channel/ChannelError;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Level"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/android/agoo/net/channel/ChannelError$Level;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lorg/android/agoo/net/channel/ChannelError$Level;

.field public static final enum b:Lorg/android/agoo/net/channel/ChannelError$Level;

.field public static final enum c:Lorg/android/agoo/net/channel/ChannelError$Level;

.field public static final enum d:Lorg/android/agoo/net/channel/ChannelError$Level;

.field public static final enum e:Lorg/android/agoo/net/channel/ChannelError$Level;

.field public static final enum f:Lorg/android/agoo/net/channel/ChannelError$Level;

.field public static final enum g:Lorg/android/agoo/net/channel/ChannelError$Level;

.field public static final enum h:Lorg/android/agoo/net/channel/ChannelError$Level;

.field private static final synthetic i:[Lorg/android/agoo/net/channel/ChannelError$Level;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 104
    new-instance v0, Lorg/android/agoo/net/channel/ChannelError$Level;

    const-string v1, "UNNECESSARY"

    invoke-direct {v0, v1, v3}, Lorg/android/agoo/net/channel/ChannelError$Level;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/android/agoo/net/channel/ChannelError$Level;->a:Lorg/android/agoo/net/channel/ChannelError$Level;

    new-instance v0, Lorg/android/agoo/net/channel/ChannelError$Level;

    const-string v1, "RECONNECT"

    invoke-direct {v0, v1, v4}, Lorg/android/agoo/net/channel/ChannelError$Level;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/android/agoo/net/channel/ChannelError$Level;->b:Lorg/android/agoo/net/channel/ChannelError$Level;

    new-instance v0, Lorg/android/agoo/net/channel/ChannelError$Level;

    const-string v1, "RECONNECT_CLEAR_X_TOKEN"

    invoke-direct {v0, v1, v5}, Lorg/android/agoo/net/channel/ChannelError$Level;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/android/agoo/net/channel/ChannelError$Level;->c:Lorg/android/agoo/net/channel/ChannelError$Level;

    new-instance v0, Lorg/android/agoo/net/channel/ChannelError$Level;

    const-string v1, "RECONNECT_REFRESH_HOST"

    invoke-direct {v0, v1, v6}, Lorg/android/agoo/net/channel/ChannelError$Level;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/android/agoo/net/channel/ChannelError$Level;->d:Lorg/android/agoo/net/channel/ChannelError$Level;

    new-instance v0, Lorg/android/agoo/net/channel/ChannelError$Level;

    const-string v1, "SPDY_RELOAD"

    invoke-direct {v0, v1, v7}, Lorg/android/agoo/net/channel/ChannelError$Level;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/android/agoo/net/channel/ChannelError$Level;->e:Lorg/android/agoo/net/channel/ChannelError$Level;

    new-instance v0, Lorg/android/agoo/net/channel/ChannelError$Level;

    const-string v1, "FORCE_CHUNKED"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lorg/android/agoo/net/channel/ChannelError$Level;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/android/agoo/net/channel/ChannelError$Level;->f:Lorg/android/agoo/net/channel/ChannelError$Level;

    new-instance v0, Lorg/android/agoo/net/channel/ChannelError$Level;

    const-string v1, "PAUSE"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lorg/android/agoo/net/channel/ChannelError$Level;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/android/agoo/net/channel/ChannelError$Level;->g:Lorg/android/agoo/net/channel/ChannelError$Level;

    new-instance v0, Lorg/android/agoo/net/channel/ChannelError$Level;

    const-string v1, "DISABLE"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lorg/android/agoo/net/channel/ChannelError$Level;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/android/agoo/net/channel/ChannelError$Level;->h:Lorg/android/agoo/net/channel/ChannelError$Level;

    .line 103
    const/16 v0, 0x8

    new-array v0, v0, [Lorg/android/agoo/net/channel/ChannelError$Level;

    sget-object v1, Lorg/android/agoo/net/channel/ChannelError$Level;->a:Lorg/android/agoo/net/channel/ChannelError$Level;

    aput-object v1, v0, v3

    sget-object v1, Lorg/android/agoo/net/channel/ChannelError$Level;->b:Lorg/android/agoo/net/channel/ChannelError$Level;

    aput-object v1, v0, v4

    sget-object v1, Lorg/android/agoo/net/channel/ChannelError$Level;->c:Lorg/android/agoo/net/channel/ChannelError$Level;

    aput-object v1, v0, v5

    sget-object v1, Lorg/android/agoo/net/channel/ChannelError$Level;->d:Lorg/android/agoo/net/channel/ChannelError$Level;

    aput-object v1, v0, v6

    sget-object v1, Lorg/android/agoo/net/channel/ChannelError$Level;->e:Lorg/android/agoo/net/channel/ChannelError$Level;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lorg/android/agoo/net/channel/ChannelError$Level;->f:Lorg/android/agoo/net/channel/ChannelError$Level;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lorg/android/agoo/net/channel/ChannelError$Level;->g:Lorg/android/agoo/net/channel/ChannelError$Level;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lorg/android/agoo/net/channel/ChannelError$Level;->h:Lorg/android/agoo/net/channel/ChannelError$Level;

    aput-object v2, v0, v1

    sput-object v0, Lorg/android/agoo/net/channel/ChannelError$Level;->i:[Lorg/android/agoo/net/channel/ChannelError$Level;

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
    .line 103
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/android/agoo/net/channel/ChannelError$Level;
    .locals 1

    .prologue
    .line 103
    const-class v0, Lorg/android/agoo/net/channel/ChannelError$Level;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/android/agoo/net/channel/ChannelError$Level;

    return-object v0
.end method

.method public static values()[Lorg/android/agoo/net/channel/ChannelError$Level;
    .locals 1

    .prologue
    .line 103
    sget-object v0, Lorg/android/agoo/net/channel/ChannelError$Level;->i:[Lorg/android/agoo/net/channel/ChannelError$Level;

    invoke-virtual {v0}, [Lorg/android/agoo/net/channel/ChannelError$Level;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/android/agoo/net/channel/ChannelError$Level;

    return-object v0
.end method
