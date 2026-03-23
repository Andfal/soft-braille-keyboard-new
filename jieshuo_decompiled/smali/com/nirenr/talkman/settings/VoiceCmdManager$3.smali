.class Lcom/nirenr/talkman/settings/VoiceCmdManager$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/FilenameFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nirenr/talkman/settings/VoiceCmdManager;->f()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/nirenr/talkman/settings/VoiceCmdManager;


# direct methods
.method constructor <init>(Lcom/nirenr/talkman/settings/VoiceCmdManager;)V
    .locals 0

    iput-object p1, p0, Lcom/nirenr/talkman/settings/VoiceCmdManager$3;->a:Lcom/nirenr/talkman/settings/VoiceCmdManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;Ljava/lang/String;)Z
    .locals 0

    const-string p1, "config"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method
