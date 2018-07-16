.class final Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$responseCode$1;
.super Ljava/lang/Object;
.source "MessageResponse.java"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumLiteMap;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$responseCode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/protobuf/Internal$EnumLiteMap",
        "<",
        "Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$responseCode;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 222
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$responseCode;
    .locals 1

    .prologue
    .line 224
    invoke-static {p1}, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$responseCode;->valueOf(I)Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$responseCode;

    move-result-object v0

    return-object v0
.end method

.method public synthetic findValueByNumber(I)Lcom/google/protobuf/Internal$EnumLite;
    .locals 1

    .prologue
    .line 222
    invoke-virtual {p0, p1}, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$responseCode$1;->a(I)Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$responseCode;

    move-result-object v0

    return-object v0
.end method
