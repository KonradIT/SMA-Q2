.class synthetic Lorg/android/agoo/net/channel/DNSManager$1;
.super Ljava/lang/Object;
.source "DNSManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/android/agoo/net/channel/DNSManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic a:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 221
    invoke-static {}, Lorg/android/agoo/net/channel/ChannelType;->values()[Lorg/android/agoo/net/channel/ChannelType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lorg/android/agoo/net/channel/DNSManager$1;->a:[I

    :try_start_0
    sget-object v0, Lorg/android/agoo/net/channel/DNSManager$1;->a:[I

    sget-object v1, Lorg/android/agoo/net/channel/ChannelType;->a:Lorg/android/agoo/net/channel/ChannelType;

    invoke-virtual {v1}, Lorg/android/agoo/net/channel/ChannelType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
