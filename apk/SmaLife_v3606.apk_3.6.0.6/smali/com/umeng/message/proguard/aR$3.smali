.class synthetic Lcom/umeng/message/proguard/aR$3;
.super Ljava/lang/Object;
.source "NewMessagePush.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/message/proguard/aR;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic a:[I

.field static final synthetic b:[I

.field static final synthetic c:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 981
    invoke-static {}, Lorg/android/agoo/net/channel/ChannelState;->values()[Lorg/android/agoo/net/channel/ChannelState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/umeng/message/proguard/aR$3;->c:[I

    :try_start_0
    sget-object v0, Lcom/umeng/message/proguard/aR$3;->c:[I

    sget-object v1, Lorg/android/agoo/net/channel/ChannelState;->d:Lorg/android/agoo/net/channel/ChannelState;

    invoke-virtual {v1}, Lorg/android/agoo/net/channel/ChannelState;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_a

    .line 750
    :goto_0
    invoke-static {}, Lorg/android/agoo/net/channel/ChannelError$Level;->values()[Lorg/android/agoo/net/channel/ChannelError$Level;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/umeng/message/proguard/aR$3;->b:[I

    :try_start_1
    sget-object v0, Lcom/umeng/message/proguard/aR$3;->b:[I

    sget-object v1, Lorg/android/agoo/net/channel/ChannelError$Level;->h:Lorg/android/agoo/net/channel/ChannelError$Level;

    invoke-virtual {v1}, Lorg/android/agoo/net/channel/ChannelError$Level;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_9

    :goto_1
    :try_start_2
    sget-object v0, Lcom/umeng/message/proguard/aR$3;->b:[I

    sget-object v1, Lorg/android/agoo/net/channel/ChannelError$Level;->g:Lorg/android/agoo/net/channel/ChannelError$Level;

    invoke-virtual {v1}, Lorg/android/agoo/net/channel/ChannelError$Level;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_8

    :goto_2
    :try_start_3
    sget-object v0, Lcom/umeng/message/proguard/aR$3;->b:[I

    sget-object v1, Lorg/android/agoo/net/channel/ChannelError$Level;->f:Lorg/android/agoo/net/channel/ChannelError$Level;

    invoke-virtual {v1}, Lorg/android/agoo/net/channel/ChannelError$Level;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_7

    :goto_3
    :try_start_4
    sget-object v0, Lcom/umeng/message/proguard/aR$3;->b:[I

    sget-object v1, Lorg/android/agoo/net/channel/ChannelError$Level;->e:Lorg/android/agoo/net/channel/ChannelError$Level;

    invoke-virtual {v1}, Lorg/android/agoo/net/channel/ChannelError$Level;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_6

    :goto_4
    :try_start_5
    sget-object v0, Lcom/umeng/message/proguard/aR$3;->b:[I

    sget-object v1, Lorg/android/agoo/net/channel/ChannelError$Level;->c:Lorg/android/agoo/net/channel/ChannelError$Level;

    invoke-virtual {v1}, Lorg/android/agoo/net/channel/ChannelError$Level;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :goto_5
    :try_start_6
    sget-object v0, Lcom/umeng/message/proguard/aR$3;->b:[I

    sget-object v1, Lorg/android/agoo/net/channel/ChannelError$Level;->d:Lorg/android/agoo/net/channel/ChannelError$Level;

    invoke-virtual {v1}, Lorg/android/agoo/net/channel/ChannelError$Level;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_4

    :goto_6
    :try_start_7
    sget-object v0, Lcom/umeng/message/proguard/aR$3;->b:[I

    sget-object v1, Lorg/android/agoo/net/channel/ChannelError$Level;->b:Lorg/android/agoo/net/channel/ChannelError$Level;

    invoke-virtual {v1}, Lorg/android/agoo/net/channel/ChannelError$Level;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_3

    :goto_7
    :try_start_8
    sget-object v0, Lcom/umeng/message/proguard/aR$3;->b:[I

    sget-object v1, Lorg/android/agoo/net/channel/ChannelError$Level;->a:Lorg/android/agoo/net/channel/ChannelError$Level;

    invoke-virtual {v1}, Lorg/android/agoo/net/channel/ChannelError$Level;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_2

    .line 363
    :goto_8
    invoke-static {}, Lorg/android/agoo/net/channel/ChannelType;->values()[Lorg/android/agoo/net/channel/ChannelType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/umeng/message/proguard/aR$3;->a:[I

    :try_start_9
    sget-object v0, Lcom/umeng/message/proguard/aR$3;->a:[I

    sget-object v1, Lorg/android/agoo/net/channel/ChannelType;->b:Lorg/android/agoo/net/channel/ChannelType;

    invoke-virtual {v1}, Lorg/android/agoo/net/channel/ChannelType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_1

    :goto_9
    :try_start_a
    sget-object v0, Lcom/umeng/message/proguard/aR$3;->a:[I

    sget-object v1, Lorg/android/agoo/net/channel/ChannelType;->a:Lorg/android/agoo/net/channel/ChannelType;

    invoke-virtual {v1}, Lorg/android/agoo/net/channel/ChannelType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_0

    :goto_a
    return-void

    :catch_0
    move-exception v0

    goto :goto_a

    :catch_1
    move-exception v0

    goto :goto_9

    .line 750
    :catch_2
    move-exception v0

    goto :goto_8

    :catch_3
    move-exception v0

    goto :goto_7

    :catch_4
    move-exception v0

    goto :goto_6

    :catch_5
    move-exception v0

    goto :goto_5

    :catch_6
    move-exception v0

    goto :goto_4

    :catch_7
    move-exception v0

    goto :goto_3

    :catch_8
    move-exception v0

    goto :goto_2

    :catch_9
    move-exception v0

    goto/16 :goto_1

    .line 981
    :catch_a
    move-exception v0

    goto/16 :goto_0
.end method
