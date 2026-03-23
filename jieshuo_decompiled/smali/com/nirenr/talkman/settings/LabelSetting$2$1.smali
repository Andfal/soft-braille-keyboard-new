.class Lcom/nirenr/talkman/settings/LabelSetting$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/FilenameFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nirenr/talkman/settings/LabelSetting$2;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/nirenr/talkman/settings/LabelSetting$2;


# direct methods
.method constructor <init>(Lcom/nirenr/talkman/settings/LabelSetting$2;)V
    .locals 0

    iput-object p1, p0, Lcom/nirenr/talkman/settings/LabelSetting$2$1;->a:Lcom/nirenr/talkman/settings/LabelSetting$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;Ljava/lang/String;)Z
    .locals 0

    const-string p1, ".json"

    invoke-virtual {p2, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
