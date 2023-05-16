document.getElementById('termsCheckbox').addEventListener('change', checkAgreement);
document.getElementById('privacyCheckbox').addEventListener('change', checkAgreement);

function checkAgreement() {
    const termsAgreed = document.getElementById('termsCheckbox').checked;
    const privacyAgreed = document.getElementById('privacyCheckbox').checked;
    document.getElementById('submitButton').disabled = !(termsAgreed && privacyAgreed);
}
