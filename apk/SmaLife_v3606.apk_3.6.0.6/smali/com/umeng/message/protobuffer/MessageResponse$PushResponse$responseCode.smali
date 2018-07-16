.class public final enum Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$responseCode;
.super Ljava/lang/Enum;
.source "MessageResponse.java"

# interfaces
.implements Lcom/google/protobuf/ProtocolMessageEnum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/message/protobuffer/MessageResponse$PushResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "responseCode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$responseCode;",
        ">;",
        "Lcom/google/protobuf/ProtocolMessageEnum;"
    }
.end annotation


# static fields
.field public static final enum INVALID_REQUEST:Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$responseCode;

.field public static final INVALID_REQUEST_VALUE:I = 0x1

.field public static final enum SERVER_EXCEPTION:Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$responseCode;

.field public static final SERVER_EXCEPTION_VALUE:I = 0x2

.field public static final enum SUCCESS:Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$responseCode;

.field public static final SUCCESS_VALUE:I

.field private static a:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$responseCode;",
            ">;"
        }
    .end annotation
.end field

.field private static final b:[Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$responseCode;

.field private static final synthetic e:[Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$responseCode;


# instance fields
.field private final c:I

.field private final d:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 180
    new-instance v0, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$responseCode;

    const-string v1, "SUCCESS"

    invoke-direct {v0, v1, v2, v2, v2}, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$responseCode;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$responseCode;->SUCCESS:Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$responseCode;

    .line 184
    new-instance v0, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$responseCode;

    const-string v1, "INVALID_REQUEST"

    invoke-direct {v0, v1, v3, v3, v3}, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$responseCode;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$responseCode;->INVALID_REQUEST:Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$responseCode;

    .line 188
    new-instance v0, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$responseCode;

    const-string v1, "SERVER_EXCEPTION"

    invoke-direct {v0, v1, v4, v4, v4}, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$responseCode;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$responseCode;->SERVER_EXCEPTION:Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$responseCode;

    .line 175
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$responseCode;

    sget-object v1, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$responseCode;->SUCCESS:Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$responseCode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$responseCode;->INVALID_REQUEST:Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$responseCode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$responseCode;->SERVER_EXCEPTION:Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$responseCode;

    aput-object v1, v0, v4

    sput-object v0, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$responseCode;->e:[Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$responseCode;

    .line 221
    new-instance v0, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$responseCode$1;

    invoke-direct {v0}, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$responseCode$1;-><init>()V

    sput-object v0, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$responseCode;->a:Lcom/google/protobuf/Internal$EnumLiteMap;

    .line 241
    invoke-static {}, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$responseCode;->values()[Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$responseCode;

    move-result-object v0

    sput-object v0, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$responseCode;->b:[Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$responseCode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;III)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    .prologue
    .line 255
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 256
    iput p3, p0, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$responseCode;->c:I

    .line 257
    iput p4, p0, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$responseCode;->d:I

    .line 258
    return-void
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;
    .locals 2

    .prologue
    .line 238
    invoke-static {}, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$Descriptor;->getEnumTypes()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$EnumDescriptor;

    return-object v0
.end method

.method public static internalGetValueMap()Lcom/google/protobuf/Internal$EnumLiteMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$responseCode;",
            ">;"
        }
    .end annotation

    .prologue
    .line 218
    sget-object v0, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$responseCode;->a:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public static valueOf(I)Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$responseCode;
    .locals 1

    .prologue
    .line 208
    packed-switch p0, :pswitch_data_0

    .line 212
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 209
    :pswitch_0
    sget-object v0, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$responseCode;->SUCCESS:Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$responseCode;

    goto :goto_0

    .line 210
    :pswitch_1
    sget-object v0, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$responseCode;->INVALID_REQUEST:Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$responseCode;

    goto :goto_0

    .line 211
    :pswitch_2
    sget-object v0, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$responseCode;->SERVER_EXCEPTION:Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$responseCode;

    goto :goto_0

    .line 208
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static valueOf(Lcom/google/protobuf/Descriptors$EnumValueDescriptor;)Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$responseCode;
    .locals 2

    .prologue
    .line 245
    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;->getType()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    invoke-static {}, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$responseCode;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 246
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "EnumValueDescriptor is not for this type."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 249
    :cond_0
    sget-object v0, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$responseCode;->b:[Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$responseCode;

    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;->getIndex()I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$responseCode;
    .locals 1

    .prologue
    .line 175
    const-class v0, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$responseCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$responseCode;

    return-object v0
.end method

.method public static values()[Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$responseCode;
    .locals 1

    .prologue
    .line 175
    sget-object v0, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$responseCode;->e:[Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$responseCode;

    invoke-virtual {v0}, [Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$responseCode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$responseCode;

    return-object v0
.end method


# virtual methods
.method public final getDescriptorForType()Lcom/google/protobuf/Descriptors$EnumDescriptor;
    .locals 1

    .prologue
    .line 234
    invoke-static {}, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$responseCode;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public final getNumber()I
    .locals 1

    .prologue
    .line 205
    iget v0, p0, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$responseCode;->d:I

    return v0
.end method

.method public final getValueDescriptor()Lcom/google/protobuf/Descriptors$EnumValueDescriptor;
    .locals 2

    .prologue
    .line 230
    invoke-static {}, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$responseCode;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$EnumDescriptor;->getValues()Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/umeng/message/protobuffer/MessageResponse$PushResponse$responseCode;->c:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;

    return-object v0
.end method
