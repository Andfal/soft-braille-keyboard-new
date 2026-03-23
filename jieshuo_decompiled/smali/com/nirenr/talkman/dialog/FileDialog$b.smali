.class Lcom/nirenr/talkman/dialog/FileDialog$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nirenr/talkman/dialog/FileDialog;-><init>(Landroid/content/Context;Lcom/nirenr/talkman/dialog/FileDialog$OnAddListener;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/nirenr/talkman/dialog/FileDialog;


# direct methods
.method constructor <init>(Lcom/nirenr/talkman/dialog/FileDialog;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/nirenr/talkman/dialog/FileDialog$b;->b:Lcom/nirenr/talkman/dialog/FileDialog;

    iput-object p2, p0, Lcom/nirenr/talkman/dialog/FileDialog$b;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object p1, p0, Lcom/nirenr/talkman/dialog/FileDialog$b;->a:Landroid/content/Context;

    new-instance p2, Landroid/content/Intent;

    iget-object v0, p0, Lcom/nirenr/talkman/dialog/FileDialog$b;->a:Landroid/content/Context;

    const-class v1, Lcom/nirenr/talkman/settings/VoiceCmdManager;

    invoke-direct {p2, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
