.class Lcom/nirenr/talkman/settings/BlackListSetting$EditDialog$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nirenr/talkman/settings/BlackListSetting$EditDialog;->show()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/nirenr/talkman/settings/BlackListSetting$EditDialog;


# direct methods
.method constructor <init>(Lcom/nirenr/talkman/settings/BlackListSetting$EditDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/nirenr/talkman/settings/BlackListSetting$EditDialog$1;->a:Lcom/nirenr/talkman/settings/BlackListSetting$EditDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    iget-object p1, p0, Lcom/nirenr/talkman/settings/BlackListSetting$EditDialog$1;->a:Lcom/nirenr/talkman/settings/BlackListSetting$EditDialog;

    iget-object p1, p1, Lcom/nirenr/talkman/settings/BlackListSetting$EditDialog;->e:Lcom/nirenr/talkman/settings/BlackListSetting;

    invoke-static {p1}, Lcom/nirenr/talkman/settings/BlackListSetting;->d(Lcom/nirenr/talkman/settings/BlackListSetting;)I

    move-result v0

    invoke-static {p1, v0}, Lcom/nirenr/talkman/settings/BlackListSetting;->e(Lcom/nirenr/talkman/settings/BlackListSetting;I)V

    return-void
.end method
