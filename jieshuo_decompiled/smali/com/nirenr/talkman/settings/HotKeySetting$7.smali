.class Lcom/nirenr/talkman/settings/HotKeySetting$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nirenr/talkman/settings/HotKeySetting;->h(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/nirenr/talkman/settings/HotKeySetting;


# direct methods
.method constructor <init>(Lcom/nirenr/talkman/settings/HotKeySetting;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/nirenr/talkman/settings/HotKeySetting$7;->b:Lcom/nirenr/talkman/settings/HotKeySetting;

    iput-object p2, p0, Lcom/nirenr/talkman/settings/HotKeySetting$7;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object p1, p0, Lcom/nirenr/talkman/settings/HotKeySetting$7;->b:Lcom/nirenr/talkman/settings/HotKeySetting;

    iget-object p2, p0, Lcom/nirenr/talkman/settings/HotKeySetting$7;->a:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Lcom/nirenr/talkman/settings/HotKeySetting;->g(Lcom/nirenr/talkman/settings/HotKeySetting;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
