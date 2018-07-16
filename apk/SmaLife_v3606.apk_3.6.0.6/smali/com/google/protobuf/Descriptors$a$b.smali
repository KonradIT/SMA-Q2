.class final Lcom/google/protobuf/Descriptors$a$b;
.super Ljava/lang/Object;
.source "Descriptors.java"

# interfaces
.implements Lcom/google/protobuf/Descriptors$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/Descriptors$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "b"
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final c:Lcom/google/protobuf/Descriptors$FileDescriptor;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/google/protobuf/Descriptors$FileDescriptor;)V
    .locals 0

    .prologue
    .line 1836
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1837
    iput-object p3, p0, Lcom/google/protobuf/Descriptors$a$b;->c:Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 1838
    iput-object p2, p0, Lcom/google/protobuf/Descriptors$a$b;->b:Ljava/lang/String;

    .line 1839
    iput-object p1, p0, Lcom/google/protobuf/Descriptors$a$b;->a:Ljava/lang/String;

    .line 1840
    return-void
.end method


# virtual methods
.method public getFile()Lcom/google/protobuf/Descriptors$FileDescriptor;
    .locals 1

    .prologue
    .line 1833
    iget-object v0, p0, Lcom/google/protobuf/Descriptors$a$b;->c:Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-object v0
.end method

.method public getFullName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1832
    iget-object v0, p0, Lcom/google/protobuf/Descriptors$a$b;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1831
    iget-object v0, p0, Lcom/google/protobuf/Descriptors$a$b;->a:Ljava/lang/String;

    return-object v0
.end method

.method public toProto()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 1830
    iget-object v0, p0, Lcom/google/protobuf/Descriptors$a$b;->c:Lcom/google/protobuf/Descriptors$FileDescriptor;

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->toProto()Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;

    move-result-object v0

    return-object v0
.end method
