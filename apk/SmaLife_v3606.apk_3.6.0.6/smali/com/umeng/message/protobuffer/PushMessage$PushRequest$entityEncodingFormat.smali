.class public final enum Lcom/umeng/message/protobuffer/PushMessage$PushRequest$entityEncodingFormat;
.super Ljava/lang/Enum;
.source "PushMessage.java"

# interfaces
.implements Lcom/google/protobuf/ProtocolMessageEnum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/message/protobuffer/PushMessage$PushRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "entityEncodingFormat"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/umeng/message/protobuffer/PushMessage$PushRequest$entityEncodingFormat;",
        ">;",
        "Lcom/google/protobuf/ProtocolMessageEnum;"
    }
.end annotation


# static fields
.field public static final enum JSON:Lcom/umeng/message/protobuffer/PushMessage$PushRequest$entityEncodingFormat;

.field public static final enum JSON_AES:Lcom/umeng/message/protobuffer/PushMessage$PushRequest$entityEncodingFormat;

.field public static final JSON_AES_VALUE:I = 0x1

.field public static final enum JSON_RSA:Lcom/umeng/message/protobuffer/PushMessage$PushRequest$entityEncodingFormat;

.field public static final JSON_RSA_VALUE:I = 0x2

.field public static final JSON_VALUE:I

.field private static a:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/umeng/message/protobuffer/PushMessage$PushRequest$entityEncodingFormat;",
            ">;"
        }
    .end annotation
.end field

.field private static final b:[Lcom/umeng/message/protobuffer/PushMessage$PushRequest$entityEncodingFormat;

.field private static final synthetic e:[Lcom/umeng/message/protobuffer/PushMessage$PushRequest$entityEncodingFormat;


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

    .line 266
    new-instance v0, Lcom/umeng/message/protobuffer/PushMessage$PushRequest$entityEncodingFormat;

    const-string v1, "JSON"

    invoke-direct {v0, v1, v2, v2, v2}, Lcom/umeng/message/protobuffer/PushMessage$PushRequest$entityEncodingFormat;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/umeng/message/protobuffer/PushMessage$PushRequest$entityEncodingFormat;->JSON:Lcom/umeng/message/protobuffer/PushMessage$PushRequest$entityEncodingFormat;

    .line 270
    new-instance v0, Lcom/umeng/message/protobuffer/PushMessage$PushRequest$entityEncodingFormat;

    const-string v1, "JSON_AES"

    invoke-direct {v0, v1, v3, v3, v3}, Lcom/umeng/message/protobuffer/PushMessage$PushRequest$entityEncodingFormat;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/umeng/message/protobuffer/PushMessage$PushRequest$entityEncodingFormat;->JSON_AES:Lcom/umeng/message/protobuffer/PushMessage$PushRequest$entityEncodingFormat;

    .line 274
    new-instance v0, Lcom/umeng/message/protobuffer/PushMessage$PushRequest$entityEncodingFormat;

    const-string v1, "JSON_RSA"

    invoke-direct {v0, v1, v4, v4, v4}, Lcom/umeng/message/protobuffer/PushMessage$PushRequest$entityEncodingFormat;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/umeng/message/protobuffer/PushMessage$PushRequest$entityEncodingFormat;->JSON_RSA:Lcom/umeng/message/protobuffer/PushMessage$PushRequest$entityEncodingFormat;

    .line 261
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/umeng/message/protobuffer/PushMessage$PushRequest$entityEncodingFormat;

    sget-object v1, Lcom/umeng/message/protobuffer/PushMessage$PushRequest$entityEncodingFormat;->JSON:Lcom/umeng/message/protobuffer/PushMessage$PushRequest$entityEncodingFormat;

    aput-object v1, v0, v2

    sget-object v1, Lcom/umeng/message/protobuffer/PushMessage$PushRequest$entityEncodingFormat;->JSON_AES:Lcom/umeng/message/protobuffer/PushMessage$PushRequest$entityEncodingFormat;

    aput-object v1, v0, v3

    sget-object v1, Lcom/umeng/message/protobuffer/PushMessage$PushRequest$entityEncodingFormat;->JSON_RSA:Lcom/umeng/message/protobuffer/PushMessage$PushRequest$entityEncodingFormat;

    aput-object v1, v0, v4

    sput-object v0, Lcom/umeng/message/protobuffer/PushMessage$PushRequest$entityEncodingFormat;->e:[Lcom/umeng/message/protobuffer/PushMessage$PushRequest$entityEncodingFormat;

    .line 307
    new-instance v0, Lcom/umeng/message/protobuffer/PushMessage$PushRequest$entityEncodingFormat$1;

    invoke-direct {v0}, Lcom/umeng/message/protobuffer/PushMessage$PushRequest$entityEncodingFormat$1;-><init>()V

    sput-object v0, Lcom/umeng/message/protobuffer/PushMessage$PushRequest$entityEncodingFormat;->a:Lcom/google/protobuf/Internal$EnumLiteMap;

    .line 327
    invoke-static {}, Lcom/umeng/message/protobuffer/PushMessage$PushRequest$entityEncodingFormat;->values()[Lcom/umeng/message/protobuffer/PushMessage$PushRequest$entityEncodingFormat;

    move-result-object v0

    sput-object v0, Lcom/umeng/message/protobuffer/PushMessage$PushRequest$entityEncodingFormat;->b:[Lcom/umeng/message/protobuffer/PushMessage$PushRequest$entityEncodingFormat;

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
    .line 341
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 342
    iput p3, p0, Lcom/umeng/message/protobuffer/PushMessage$PushRequest$entityEncodingFormat;->c:I

    .line 343
    iput p4, p0, Lcom/umeng/message/protobuffer/PushMessage$PushRequest$entityEncodingFormat;->d:I

    .line 344
    return-void
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;
    .locals 2

    .prologue
    .line 324
    invoke-static {}, Lcom/umeng/message/protobuffer/PushMessage$PushRequest;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

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
            "Lcom/umeng/message/protobuffer/PushMessage$PushRequest$entityEncodingFormat;",
            ">;"
        }
    .end annotation

    .prologue
    .line 304
    sget-object v0, Lcom/umeng/message/protobuffer/PushMessage$PushRequest$entityEncodingFormat;->a:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public static valueOf(I)Lcom/umeng/message/protobuffer/PushMessage$PushRequest$entityEncodingFormat;
    .locals 1

    .prologue
    .line 294
    packed-switch p0, :pswitch_data_0

    .line 298
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 295
    :pswitch_0
    sget-object v0, Lcom/umeng/message/protobuffer/PushMessage$PushRequest$entityEncodingFormat;->JSON:Lcom/umeng/message/protobuffer/PushMessage$PushRequest$entityEncodingFormat;

    goto :goto_0

    .line 296
    :pswitch_1
    sget-object v0, Lcom/umeng/message/protobuffer/PushMessage$PushRequest$entityEncodingFormat;->JSON_AES:Lcom/umeng/message/protobuffer/PushMessage$PushRequest$entityEncodingFormat;

    goto :goto_0

    .line 297
    :pswitch_2
    sget-object v0, Lcom/umeng/message/protobuffer/PushMessage$PushRequest$entityEncodingFormat;->JSON_RSA:Lcom/umeng/message/protobuffer/PushMessage$PushRequest$entityEncodingFormat;

    goto :goto_0

    .line 294
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static valueOf(Lcom/google/protobuf/Descriptors$EnumValueDescriptor;)Lcom/umeng/message/protobuffer/PushMessage$PushRequest$entityEncodingFormat;
    .locals 2

    .prologue
    .line 331
    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;->getType()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    invoke-static {}, Lcom/umeng/message/protobuffer/PushMessage$PushRequest$entityEncodingFormat;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 332
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "EnumValueDescriptor is not for this type."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 335
    :cond_0
    sget-object v0, Lcom/umeng/message/protobuffer/PushMessage$PushRequest$entityEncodingFormat;->b:[Lcom/umeng/message/protobuffer/PushMessage$PushRequest$entityEncodingFormat;

    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;->getIndex()I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/umeng/message/protobuffer/PushMessage$PushRequest$entityEncodingFormat;
    .locals 1

    .prologue
    .line 261
    const-class v0, Lcom/umeng/message/protobuffer/PushMessage$PushRequest$entityEncodingFormat;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/umeng/message/protobuffer/PushMessage$PushRequest$entityEncodingFormat;

    return-object v0
.end method

.method public static values()[Lcom/umeng/message/protobuffer/PushMessage$PushRequest$entityEncodingFormat;
    .locals 1

    .prologue
    .line 261
    sget-object v0, Lcom/umeng/message/protobuffer/PushMessage$PushRequest$entityEncodingFormat;->e:[Lcom/umeng/message/protobuffer/PushMessage$PushRequest$entityEncodingFormat;

    invoke-virtual {v0}, [Lcom/umeng/message/protobuffer/PushMessage$PushRequest$entityEncodingFormat;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/umeng/message/protobuffer/PushMessage$PushRequest$entityEncodingFormat;

    return-object v0
.end method


# virtual methods
.method public final getDescriptorForType()Lcom/google/protobuf/Descriptors$EnumDescriptor;
    .locals 1

    .prologue
    .line 320
    invoke-static {}, Lcom/umeng/message/protobuffer/PushMessage$PushRequest$entityEncodingFormat;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public final getNumber()I
    .locals 1

    .prologue
    .line 291
    iget v0, p0, Lcom/umeng/message/protobuffer/PushMessage$PushRequest$entityEncodingFormat;->d:I

    return v0
.end method

.method public final getValueDescriptor()Lcom/google/protobuf/Descriptors$EnumValueDescriptor;
    .locals 2

    .prologue
    .line 316
    invoke-static {}, Lcom/umeng/message/protobuffer/PushMessage$PushRequest$entityEncodingFormat;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$EnumDescriptor;->getValues()Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/umeng/message/protobuffer/PushMessage$PushRequest$entityEncodingFormat;->c:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;

    return-object v0
.end method
