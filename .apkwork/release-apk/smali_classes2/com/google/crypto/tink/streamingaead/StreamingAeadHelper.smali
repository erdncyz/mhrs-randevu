.class final Lcom/google/crypto/tink/streamingaead/StreamingAeadHelper;
.super Ljava/lang/Object;
.source "StreamingAeadHelper.java"

# interfaces
.implements Lcom/google/crypto/tink/StreamingAead;


# instance fields
.field private final allPrimitives:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/crypto/tink/StreamingAead;",
            ">;"
        }
    .end annotation
.end field

.field private final primary:Lcom/google/crypto/tink/StreamingAead;


# direct methods
.method public constructor <init>(Ljava/util/List;Lcom/google/crypto/tink/StreamingAead;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "allPrimitives",
            "primary"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/crypto/tink/StreamingAead;",
            ">;",
            "Lcom/google/crypto/tink/StreamingAead;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/crypto/tink/streamingaead/StreamingAeadHelper;->allPrimitives:Ljava/util/List;

    iput-object p2, p0, Lcom/google/crypto/tink/streamingaead/StreamingAeadHelper;->primary:Lcom/google/crypto/tink/StreamingAead;

    return-void
.end method


# virtual methods
.method public newDecryptingChannel(Ljava/nio/channels/ReadableByteChannel;[B)Ljava/nio/channels/ReadableByteChannel;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "ciphertextChannel",
            "associatedData"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 59
    new-instance v0, Lcom/google/crypto/tink/streamingaead/ReadableByteChannelDecrypter;

    iget-object v1, p0, Lcom/google/crypto/tink/streamingaead/StreamingAeadHelper;->allPrimitives:Ljava/util/List;

    invoke-direct {v0, v1, p1, p2}, Lcom/google/crypto/tink/streamingaead/ReadableByteChannelDecrypter;-><init>(Ljava/util/List;Ljava/nio/channels/ReadableByteChannel;[B)V

    return-object v0
.end method

.method public newDecryptingStream(Ljava/io/InputStream;[B)Ljava/io/InputStream;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "ciphertextStream",
            "associatedData"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 74
    new-instance v0, Lcom/google/crypto/tink/streamingaead/InputStreamDecrypter;

    iget-object v1, p0, Lcom/google/crypto/tink/streamingaead/StreamingAeadHelper;->allPrimitives:Ljava/util/List;

    invoke-direct {v0, v1, p1, p2}, Lcom/google/crypto/tink/streamingaead/InputStreamDecrypter;-><init>(Ljava/util/List;Ljava/io/InputStream;[B)V

    return-object v0
.end method

.method public newEncryptingChannel(Ljava/nio/channels/WritableByteChannel;[B)Ljava/nio/channels/WritableByteChannel;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "ciphertextDestination",
            "associatedData"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;,
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/crypto/tink/streamingaead/StreamingAeadHelper;->primary:Lcom/google/crypto/tink/StreamingAead;

    .line 52
    invoke-interface {v0, p1, p2}, Lcom/google/crypto/tink/StreamingAead;->newEncryptingChannel(Ljava/nio/channels/WritableByteChannel;[B)Ljava/nio/channels/WritableByteChannel;

    move-result-object p1

    return-object p1
.end method

.method public newEncryptingStream(Ljava/io/OutputStream;[B)Ljava/io/OutputStream;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "ciphertext",
            "associatedData"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;,
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/crypto/tink/streamingaead/StreamingAeadHelper;->primary:Lcom/google/crypto/tink/StreamingAead;

    .line 81
    invoke-interface {v0, p1, p2}, Lcom/google/crypto/tink/StreamingAead;->newEncryptingStream(Ljava/io/OutputStream;[B)Ljava/io/OutputStream;

    move-result-object p1

    return-object p1
.end method

.method public newSeekableDecryptingChannel(Ljava/nio/channels/SeekableByteChannel;[B)Ljava/nio/channels/SeekableByteChannel;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "ciphertextChannel",
            "associatedData"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 66
    new-instance v0, Lcom/google/crypto/tink/streamingaead/SeekableByteChannelDecrypter;

    iget-object v1, p0, Lcom/google/crypto/tink/streamingaead/StreamingAeadHelper;->allPrimitives:Ljava/util/List;

    invoke-direct {v0, v1, p1, p2}, Lcom/google/crypto/tink/streamingaead/SeekableByteChannelDecrypter;-><init>(Ljava/util/List;Ljava/nio/channels/SeekableByteChannel;[B)V

    return-object v0
.end method
