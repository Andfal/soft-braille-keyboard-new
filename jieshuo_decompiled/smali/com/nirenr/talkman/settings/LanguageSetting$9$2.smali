.class Lcom/nirenr/talkman/settings/LanguageSetting$9$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nirenr/talkman/settings/LanguageSetting$9;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/nirenr/talkman/settings/LanguageSetting$9;


# direct methods
.method constructor <init>(Lcom/nirenr/talkman/settings/LanguageSetting$9;)V
    .locals 0

    iput-object p1, p0, Lcom/nirenr/talkman/settings/LanguageSetting$9$2;->a:Lcom/nirenr/talkman/settings/LanguageSetting$9;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lcom/nirenr/talkman/settings/LanguageSetting$9$2;->a:Lcom/nirenr/talkman/settings/LanguageSetting$9;

    iget-object p1, p1, Lcom/nirenr/talkman/settings/LanguageSetting$9;->b:Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method
